{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EFS.DescribeFileSystemPolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the @FileSystemPolicy@ for the specified EFS file system.
--
-- This operation requires permissions for the @elasticfilesystem:DescribeFileSystemPolicy@ action.
module Network.AWS.EFS.DescribeFileSystemPolicy
    (
    -- * Creating a request
      DescribeFileSystemPolicy (..)
    , mkDescribeFileSystemPolicy
    -- ** Request lenses
    , dfspfFileSystemId

     -- * Destructuring the response
    , Types.FileSystemPolicyDescription (..)
    , Types.mkFileSystemPolicyDescription
    -- ** Response lenses
    , Types.fspdFileSystemId
    , Types.fspdPolicy
    ) where

import qualified Network.AWS.EFS.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeFileSystemPolicy' smart constructor.
newtype DescribeFileSystemPolicy = DescribeFileSystemPolicy'
  { fileSystemId :: Types.FileSystemId
    -- ^ Specifies which EFS file system to retrieve the @FileSystemPolicy@ for.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeFileSystemPolicy' value with any optional fields omitted.
mkDescribeFileSystemPolicy
    :: Types.FileSystemId -- ^ 'fileSystemId'
    -> DescribeFileSystemPolicy
mkDescribeFileSystemPolicy fileSystemId
  = DescribeFileSystemPolicy'{fileSystemId}

-- | Specifies which EFS file system to retrieve the @FileSystemPolicy@ for.
--
-- /Note:/ Consider using 'fileSystemId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfspfFileSystemId :: Lens.Lens' DescribeFileSystemPolicy Types.FileSystemId
dfspfFileSystemId = Lens.field @"fileSystemId"
{-# INLINEABLE dfspfFileSystemId #-}
{-# DEPRECATED fileSystemId "Use generic-lens or generic-optics with 'fileSystemId' instead"  #-}

instance Core.ToQuery DescribeFileSystemPolicy where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeFileSystemPolicy where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DescribeFileSystemPolicy where
        type Rs DescribeFileSystemPolicy =
             Types.FileSystemPolicyDescription
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET,
                         Core._rqPath =
                           "/2015-02-01/file-systems/" Core.<> Core.toText fileSystemId
                             Core.<> "/policy",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON (\ s h x -> Core.eitherParseJSON x)
        
        {-# INLINE parseResponse #-}
