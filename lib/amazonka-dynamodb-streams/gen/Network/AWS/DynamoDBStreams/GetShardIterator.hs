{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDBStreams.GetShardIterator
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a shard iterator. A shard iterator provides information about how to retrieve the stream records from within a shard. Use the shard iterator in a subsequent @GetRecords@ request to read the stream records from the shard.
module Network.AWS.DynamoDBStreams.GetShardIterator
    (
    -- * Creating a request
      GetShardIterator (..)
    , mkGetShardIterator
    -- ** Request lenses
    , gsiStreamArn
    , gsiShardId
    , gsiShardIteratorType
    , gsiSequenceNumber

    -- * Destructuring the response
    , GetShardIteratorResponse (..)
    , mkGetShardIteratorResponse
    -- ** Response lenses
    , gsirrsShardIterator
    , gsirrsResponseStatus
    ) where

import qualified Network.AWS.DynamoDBStreams.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a @GetShardIterator@ operation.
--
-- /See:/ 'mkGetShardIterator' smart constructor.
data GetShardIterator = GetShardIterator'
  { streamArn :: Types.StreamArn
    -- ^ The Amazon Resource Name (ARN) for the stream.
  , shardId :: Types.ShardId
    -- ^ The identifier of the shard. The iterator will be returned for this shard ID.
  , shardIteratorType :: Types.ShardIteratorType
    -- ^ Determines how the shard iterator is used to start reading stream records from the shard:
--
--
--     * @AT_SEQUENCE_NUMBER@ - Start reading exactly from the position denoted by a specific sequence number.
--
--
--     * @AFTER_SEQUENCE_NUMBER@ - Start reading right after the position denoted by a specific sequence number.
--
--
--     * @TRIM_HORIZON@ - Start reading at the last (untrimmed) stream record, which is the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream.
--
--
--     * @LATEST@ - Start reading just after the most recent stream record in the shard, so that you always read the most recent data in the shard.
--
--
  , sequenceNumber :: Core.Maybe Types.SequenceNumber
    -- ^ The sequence number of a stream record in the shard from which to start reading.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetShardIterator' value with any optional fields omitted.
mkGetShardIterator
    :: Types.StreamArn -- ^ 'streamArn'
    -> Types.ShardId -- ^ 'shardId'
    -> Types.ShardIteratorType -- ^ 'shardIteratorType'
    -> GetShardIterator
mkGetShardIterator streamArn shardId shardIteratorType
  = GetShardIterator'{streamArn, shardId, shardIteratorType,
                      sequenceNumber = Core.Nothing}

-- | The Amazon Resource Name (ARN) for the stream.
--
-- /Note:/ Consider using 'streamArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsiStreamArn :: Lens.Lens' GetShardIterator Types.StreamArn
gsiStreamArn = Lens.field @"streamArn"
{-# INLINEABLE gsiStreamArn #-}
{-# DEPRECATED streamArn "Use generic-lens or generic-optics with 'streamArn' instead"  #-}

-- | The identifier of the shard. The iterator will be returned for this shard ID.
--
-- /Note:/ Consider using 'shardId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsiShardId :: Lens.Lens' GetShardIterator Types.ShardId
gsiShardId = Lens.field @"shardId"
{-# INLINEABLE gsiShardId #-}
{-# DEPRECATED shardId "Use generic-lens or generic-optics with 'shardId' instead"  #-}

-- | Determines how the shard iterator is used to start reading stream records from the shard:
--
--
--     * @AT_SEQUENCE_NUMBER@ - Start reading exactly from the position denoted by a specific sequence number.
--
--
--     * @AFTER_SEQUENCE_NUMBER@ - Start reading right after the position denoted by a specific sequence number.
--
--
--     * @TRIM_HORIZON@ - Start reading at the last (untrimmed) stream record, which is the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream.
--
--
--     * @LATEST@ - Start reading just after the most recent stream record in the shard, so that you always read the most recent data in the shard.
--
--
--
-- /Note:/ Consider using 'shardIteratorType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsiShardIteratorType :: Lens.Lens' GetShardIterator Types.ShardIteratorType
gsiShardIteratorType = Lens.field @"shardIteratorType"
{-# INLINEABLE gsiShardIteratorType #-}
{-# DEPRECATED shardIteratorType "Use generic-lens or generic-optics with 'shardIteratorType' instead"  #-}

-- | The sequence number of a stream record in the shard from which to start reading.
--
-- /Note:/ Consider using 'sequenceNumber' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsiSequenceNumber :: Lens.Lens' GetShardIterator (Core.Maybe Types.SequenceNumber)
gsiSequenceNumber = Lens.field @"sequenceNumber"
{-# INLINEABLE gsiSequenceNumber #-}
{-# DEPRECATED sequenceNumber "Use generic-lens or generic-optics with 'sequenceNumber' instead"  #-}

instance Core.ToQuery GetShardIterator where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetShardIterator where
        toHeaders GetShardIterator{..}
          = Core.pure
              ("X-Amz-Target", "DynamoDBStreams_20120810.GetShardIterator")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.0")

instance Core.FromJSON GetShardIterator where
        toJSON GetShardIterator{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("StreamArn" Core..= streamArn),
                  Core.Just ("ShardId" Core..= shardId),
                  Core.Just ("ShardIteratorType" Core..= shardIteratorType),
                  ("SequenceNumber" Core..=) Core.<$> sequenceNumber])

instance Core.AWSRequest GetShardIterator where
        type Rs GetShardIterator = GetShardIteratorResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetShardIteratorResponse' Core.<$>
                   (x Core..:? "ShardIterator") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | Represents the output of a @GetShardIterator@ operation.
--
-- /See:/ 'mkGetShardIteratorResponse' smart constructor.
data GetShardIteratorResponse = GetShardIteratorResponse'
  { shardIterator :: Core.Maybe Types.ShardIterator
    -- ^ The position in the shard from which to start reading stream records sequentially. A shard iterator specifies this position using the sequence number of a stream record in a shard.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetShardIteratorResponse' value with any optional fields omitted.
mkGetShardIteratorResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetShardIteratorResponse
mkGetShardIteratorResponse responseStatus
  = GetShardIteratorResponse'{shardIterator = Core.Nothing,
                              responseStatus}

-- | The position in the shard from which to start reading stream records sequentially. A shard iterator specifies this position using the sequence number of a stream record in a shard.
--
-- /Note:/ Consider using 'shardIterator' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsirrsShardIterator :: Lens.Lens' GetShardIteratorResponse (Core.Maybe Types.ShardIterator)
gsirrsShardIterator = Lens.field @"shardIterator"
{-# INLINEABLE gsirrsShardIterator #-}
{-# DEPRECATED shardIterator "Use generic-lens or generic-optics with 'shardIterator' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsirrsResponseStatus :: Lens.Lens' GetShardIteratorResponse Core.Int
gsirrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gsirrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
