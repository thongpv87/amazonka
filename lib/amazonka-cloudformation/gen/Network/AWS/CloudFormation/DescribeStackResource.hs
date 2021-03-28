{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.DescribeStackResource
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of the specified resource in the specified stack.
--
-- For deleted stacks, DescribeStackResource returns resource information for up to 90 days after the stack has been deleted.
module Network.AWS.CloudFormation.DescribeStackResource
    (
    -- * Creating a request
      DescribeStackResource (..)
    , mkDescribeStackResource
    -- ** Request lenses
    , dsrfStackName
    , dsrfLogicalResourceId

    -- * Destructuring the response
    , DescribeStackResourceResponse (..)
    , mkDescribeStackResourceResponse
    -- ** Response lenses
    , dsrrfrsStackResourceDetail
    , dsrrfrsResponseStatus
    ) where

import qualified Network.AWS.CloudFormation.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The input for 'DescribeStackResource' action.
--
-- /See:/ 'mkDescribeStackResource' smart constructor.
data DescribeStackResource = DescribeStackResource'
  { stackName :: Types.StackName
    -- ^ The name or the unique stack ID that is associated with the stack, which are not always interchangeable:
--
--
--     * Running stacks: You can specify either the stack's name or its unique stack ID.
--
--
--     * Deleted stacks: You must specify the unique stack ID.
--
--
-- Default: There is no default value.
  , logicalResourceId :: Types.LogicalResourceId
    -- ^ The logical name of the resource as specified in the template.
--
-- Default: There is no default value.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeStackResource' value with any optional fields omitted.
mkDescribeStackResource
    :: Types.StackName -- ^ 'stackName'
    -> Types.LogicalResourceId -- ^ 'logicalResourceId'
    -> DescribeStackResource
mkDescribeStackResource stackName logicalResourceId
  = DescribeStackResource'{stackName, logicalResourceId}

-- | The name or the unique stack ID that is associated with the stack, which are not always interchangeable:
--
--
--     * Running stacks: You can specify either the stack's name or its unique stack ID.
--
--
--     * Deleted stacks: You must specify the unique stack ID.
--
--
-- Default: There is no default value.
--
-- /Note:/ Consider using 'stackName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsrfStackName :: Lens.Lens' DescribeStackResource Types.StackName
dsrfStackName = Lens.field @"stackName"
{-# INLINEABLE dsrfStackName #-}
{-# DEPRECATED stackName "Use generic-lens or generic-optics with 'stackName' instead"  #-}

-- | The logical name of the resource as specified in the template.
--
-- Default: There is no default value.
--
-- /Note:/ Consider using 'logicalResourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsrfLogicalResourceId :: Lens.Lens' DescribeStackResource Types.LogicalResourceId
dsrfLogicalResourceId = Lens.field @"logicalResourceId"
{-# INLINEABLE dsrfLogicalResourceId #-}
{-# DEPRECATED logicalResourceId "Use generic-lens or generic-optics with 'logicalResourceId' instead"  #-}

instance Core.ToQuery DescribeStackResource where
        toQuery DescribeStackResource{..}
          = Core.toQueryPair "Action" ("DescribeStackResource" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2010-05-15" :: Core.Text)
              Core.<> Core.toQueryPair "StackName" stackName
              Core.<> Core.toQueryPair "LogicalResourceId" logicalResourceId

instance Core.ToHeaders DescribeStackResource where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DescribeStackResource where
        type Rs DescribeStackResource = DescribeStackResourceResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.mempty,
                         Core._rqHeaders =
                           Core.pure
                             ("Content-Type",
                              "application/x-www-form-urlencoded; charset=utf-8")
                             Core.<> Core.toHeaders x,
                         Core._rqBody = Core.toFormBody (Core.toQuery x)}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveXMLWrapper "DescribeStackResourceResult"
              (\ s h x ->
                 DescribeStackResourceResponse' Core.<$>
                   (x Core..@? "StackResourceDetail") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | The output for a 'DescribeStackResource' action.
--
-- /See:/ 'mkDescribeStackResourceResponse' smart constructor.
data DescribeStackResourceResponse = DescribeStackResourceResponse'
  { stackResourceDetail :: Core.Maybe Types.StackResourceDetail
    -- ^ A @StackResourceDetail@ structure containing the description of the specified resource in the specified stack.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'DescribeStackResourceResponse' value with any optional fields omitted.
mkDescribeStackResourceResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeStackResourceResponse
mkDescribeStackResourceResponse responseStatus
  = DescribeStackResourceResponse'{stackResourceDetail =
                                     Core.Nothing,
                                   responseStatus}

-- | A @StackResourceDetail@ structure containing the description of the specified resource in the specified stack.
--
-- /Note:/ Consider using 'stackResourceDetail' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsrrfrsStackResourceDetail :: Lens.Lens' DescribeStackResourceResponse (Core.Maybe Types.StackResourceDetail)
dsrrfrsStackResourceDetail = Lens.field @"stackResourceDetail"
{-# INLINEABLE dsrrfrsStackResourceDetail #-}
{-# DEPRECATED stackResourceDetail "Use generic-lens or generic-optics with 'stackResourceDetail' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsrrfrsResponseStatus :: Lens.Lens' DescribeStackResourceResponse Core.Int
dsrrfrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dsrrfrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
