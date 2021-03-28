{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.DescribeTapeRecoveryPoints
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of virtual tape recovery points that are available for the specified tape gateway.
--
-- A recovery point is a point-in-time view of a virtual tape at which all the data on the virtual tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway. This operation is only supported in the tape gateway type.
--
-- This operation returns paginated results.
module Network.AWS.StorageGateway.DescribeTapeRecoveryPoints
    (
    -- * Creating a request
      DescribeTapeRecoveryPoints (..)
    , mkDescribeTapeRecoveryPoints
    -- ** Request lenses
    , dtrpGatewayARN
    , dtrpLimit
    , dtrpMarker

    -- * Destructuring the response
    , DescribeTapeRecoveryPointsResponse (..)
    , mkDescribeTapeRecoveryPointsResponse
    -- ** Response lenses
    , dtrprrsGatewayARN
    , dtrprrsMarker
    , dtrprrsTapeRecoveryPointInfos
    , dtrprrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.StorageGateway.Types as Types

-- | DescribeTapeRecoveryPointsInput
--
-- /See:/ 'mkDescribeTapeRecoveryPoints' smart constructor.
data DescribeTapeRecoveryPoints = DescribeTapeRecoveryPoints'
  { gatewayARN :: Types.GatewayARN
  , limit :: Core.Maybe Core.Natural
    -- ^ Specifies that the number of virtual tape recovery points that are described be limited to the specified number.
  , marker :: Core.Maybe Types.Marker
    -- ^ An opaque string that indicates the position at which to begin describing the virtual tape recovery points.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeTapeRecoveryPoints' value with any optional fields omitted.
mkDescribeTapeRecoveryPoints
    :: Types.GatewayARN -- ^ 'gatewayARN'
    -> DescribeTapeRecoveryPoints
mkDescribeTapeRecoveryPoints gatewayARN
  = DescribeTapeRecoveryPoints'{gatewayARN, limit = Core.Nothing,
                                marker = Core.Nothing}

-- | Undocumented field.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrpGatewayARN :: Lens.Lens' DescribeTapeRecoveryPoints Types.GatewayARN
dtrpGatewayARN = Lens.field @"gatewayARN"
{-# INLINEABLE dtrpGatewayARN #-}
{-# DEPRECATED gatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead"  #-}

-- | Specifies that the number of virtual tape recovery points that are described be limited to the specified number.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrpLimit :: Lens.Lens' DescribeTapeRecoveryPoints (Core.Maybe Core.Natural)
dtrpLimit = Lens.field @"limit"
{-# INLINEABLE dtrpLimit #-}
{-# DEPRECATED limit "Use generic-lens or generic-optics with 'limit' instead"  #-}

-- | An opaque string that indicates the position at which to begin describing the virtual tape recovery points.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrpMarker :: Lens.Lens' DescribeTapeRecoveryPoints (Core.Maybe Types.Marker)
dtrpMarker = Lens.field @"marker"
{-# INLINEABLE dtrpMarker #-}
{-# DEPRECATED marker "Use generic-lens or generic-optics with 'marker' instead"  #-}

instance Core.ToQuery DescribeTapeRecoveryPoints where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeTapeRecoveryPoints where
        toHeaders DescribeTapeRecoveryPoints{..}
          = Core.pure
              ("X-Amz-Target",
               "StorageGateway_20130630.DescribeTapeRecoveryPoints")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DescribeTapeRecoveryPoints where
        toJSON DescribeTapeRecoveryPoints{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("GatewayARN" Core..= gatewayARN),
                  ("Limit" Core..=) Core.<$> limit,
                  ("Marker" Core..=) Core.<$> marker])

instance Core.AWSRequest DescribeTapeRecoveryPoints where
        type Rs DescribeTapeRecoveryPoints =
             DescribeTapeRecoveryPointsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeTapeRecoveryPointsResponse' Core.<$>
                   (x Core..:? "GatewayARN") Core.<*> x Core..:? "Marker" Core.<*>
                     x Core..:? "TapeRecoveryPointInfos"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeTapeRecoveryPoints where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"marker") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"tapeRecoveryPointInfos" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"marker")

-- | DescribeTapeRecoveryPointsOutput
--
-- /See:/ 'mkDescribeTapeRecoveryPointsResponse' smart constructor.
data DescribeTapeRecoveryPointsResponse = DescribeTapeRecoveryPointsResponse'
  { gatewayARN :: Core.Maybe Types.GatewayARN
  , marker :: Core.Maybe Types.Marker
    -- ^ An opaque string that indicates the position at which the virtual tape recovery points that were listed for description ended.
--
-- Use this marker in your next request to list the next set of virtual tape recovery points in the list. If there are no more recovery points to describe, this field does not appear in the response.
  , tapeRecoveryPointInfos :: Core.Maybe [Types.TapeRecoveryPointInfo]
    -- ^ An array of TapeRecoveryPointInfos that are available for the specified gateway.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'DescribeTapeRecoveryPointsResponse' value with any optional fields omitted.
mkDescribeTapeRecoveryPointsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeTapeRecoveryPointsResponse
mkDescribeTapeRecoveryPointsResponse responseStatus
  = DescribeTapeRecoveryPointsResponse'{gatewayARN = Core.Nothing,
                                        marker = Core.Nothing,
                                        tapeRecoveryPointInfos = Core.Nothing, responseStatus}

-- | Undocumented field.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrprrsGatewayARN :: Lens.Lens' DescribeTapeRecoveryPointsResponse (Core.Maybe Types.GatewayARN)
dtrprrsGatewayARN = Lens.field @"gatewayARN"
{-# INLINEABLE dtrprrsGatewayARN #-}
{-# DEPRECATED gatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead"  #-}

-- | An opaque string that indicates the position at which the virtual tape recovery points that were listed for description ended.
--
-- Use this marker in your next request to list the next set of virtual tape recovery points in the list. If there are no more recovery points to describe, this field does not appear in the response.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrprrsMarker :: Lens.Lens' DescribeTapeRecoveryPointsResponse (Core.Maybe Types.Marker)
dtrprrsMarker = Lens.field @"marker"
{-# INLINEABLE dtrprrsMarker #-}
{-# DEPRECATED marker "Use generic-lens or generic-optics with 'marker' instead"  #-}

-- | An array of TapeRecoveryPointInfos that are available for the specified gateway.
--
-- /Note:/ Consider using 'tapeRecoveryPointInfos' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrprrsTapeRecoveryPointInfos :: Lens.Lens' DescribeTapeRecoveryPointsResponse (Core.Maybe [Types.TapeRecoveryPointInfo])
dtrprrsTapeRecoveryPointInfos = Lens.field @"tapeRecoveryPointInfos"
{-# INLINEABLE dtrprrsTapeRecoveryPointInfos #-}
{-# DEPRECATED tapeRecoveryPointInfos "Use generic-lens or generic-optics with 'tapeRecoveryPointInfos' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtrprrsResponseStatus :: Lens.Lens' DescribeTapeRecoveryPointsResponse Core.Int
dtrprrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dtrprrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
