{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.ListFlowDefinitions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the flow definitions in your account.
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListFlowDefinitions
    (
    -- * Creating a request
      ListFlowDefinitions (..)
    , mkListFlowDefinitions
    -- ** Request lenses
    , lfdCreationTimeAfter
    , lfdCreationTimeBefore
    , lfdMaxResults
    , lfdNextToken
    , lfdSortOrder

    -- * Destructuring the response
    , ListFlowDefinitionsResponse (..)
    , mkListFlowDefinitionsResponse
    -- ** Response lenses
    , lfdrrsFlowDefinitionSummaries
    , lfdrrsNextToken
    , lfdrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SageMaker.Types as Types

-- | /See:/ 'mkListFlowDefinitions' smart constructor.
data ListFlowDefinitions = ListFlowDefinitions'
  { creationTimeAfter :: Core.Maybe Core.NominalDiffTime
    -- ^ A filter that returns only flow definitions with a creation time greater than or equal to the specified timestamp.
  , creationTimeBefore :: Core.Maybe Core.NominalDiffTime
    -- ^ A filter that returns only flow definitions that were created before the specified timestamp.
  , maxResults :: Core.Maybe Core.Natural
    -- ^ The total number of items to return. If the total number of available items is more than the value specified in @MaxResults@ , then a @NextToken@ will be provided in the output that you can use to resume pagination.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ A token to resume pagination.
  , sortOrder :: Core.Maybe Types.SortOrder
    -- ^ An optional value that specifies whether you want the results sorted in @Ascending@ or @Descending@ order.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ListFlowDefinitions' value with any optional fields omitted.
mkListFlowDefinitions
    :: ListFlowDefinitions
mkListFlowDefinitions
  = ListFlowDefinitions'{creationTimeAfter = Core.Nothing,
                         creationTimeBefore = Core.Nothing, maxResults = Core.Nothing,
                         nextToken = Core.Nothing, sortOrder = Core.Nothing}

-- | A filter that returns only flow definitions with a creation time greater than or equal to the specified timestamp.
--
-- /Note:/ Consider using 'creationTimeAfter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfdCreationTimeAfter :: Lens.Lens' ListFlowDefinitions (Core.Maybe Core.NominalDiffTime)
lfdCreationTimeAfter = Lens.field @"creationTimeAfter"
{-# INLINEABLE lfdCreationTimeAfter #-}
{-# DEPRECATED creationTimeAfter "Use generic-lens or generic-optics with 'creationTimeAfter' instead"  #-}

-- | A filter that returns only flow definitions that were created before the specified timestamp.
--
-- /Note:/ Consider using 'creationTimeBefore' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfdCreationTimeBefore :: Lens.Lens' ListFlowDefinitions (Core.Maybe Core.NominalDiffTime)
lfdCreationTimeBefore = Lens.field @"creationTimeBefore"
{-# INLINEABLE lfdCreationTimeBefore #-}
{-# DEPRECATED creationTimeBefore "Use generic-lens or generic-optics with 'creationTimeBefore' instead"  #-}

-- | The total number of items to return. If the total number of available items is more than the value specified in @MaxResults@ , then a @NextToken@ will be provided in the output that you can use to resume pagination.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfdMaxResults :: Lens.Lens' ListFlowDefinitions (Core.Maybe Core.Natural)
lfdMaxResults = Lens.field @"maxResults"
{-# INLINEABLE lfdMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | A token to resume pagination.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfdNextToken :: Lens.Lens' ListFlowDefinitions (Core.Maybe Types.NextToken)
lfdNextToken = Lens.field @"nextToken"
{-# INLINEABLE lfdNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | An optional value that specifies whether you want the results sorted in @Ascending@ or @Descending@ order.
--
-- /Note:/ Consider using 'sortOrder' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfdSortOrder :: Lens.Lens' ListFlowDefinitions (Core.Maybe Types.SortOrder)
lfdSortOrder = Lens.field @"sortOrder"
{-# INLINEABLE lfdSortOrder #-}
{-# DEPRECATED sortOrder "Use generic-lens or generic-optics with 'sortOrder' instead"  #-}

instance Core.ToQuery ListFlowDefinitions where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListFlowDefinitions where
        toHeaders ListFlowDefinitions{..}
          = Core.pure ("X-Amz-Target", "SageMaker.ListFlowDefinitions")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListFlowDefinitions where
        toJSON ListFlowDefinitions{..}
          = Core.object
              (Core.catMaybes
                 [("CreationTimeAfter" Core..=) Core.<$> creationTimeAfter,
                  ("CreationTimeBefore" Core..=) Core.<$> creationTimeBefore,
                  ("MaxResults" Core..=) Core.<$> maxResults,
                  ("NextToken" Core..=) Core.<$> nextToken,
                  ("SortOrder" Core..=) Core.<$> sortOrder])

instance Core.AWSRequest ListFlowDefinitions where
        type Rs ListFlowDefinitions = ListFlowDefinitionsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListFlowDefinitionsResponse' Core.<$>
                   (x Core..:? "FlowDefinitionSummaries" Core..!= Core.mempty)
                     Core.<*> x Core..:? "NextToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListFlowDefinitions where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop (rs Lens.^. Lens.field @"flowDefinitionSummaries") =
            Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkListFlowDefinitionsResponse' smart constructor.
data ListFlowDefinitionsResponse = ListFlowDefinitionsResponse'
  { flowDefinitionSummaries :: [Types.FlowDefinitionSummary]
    -- ^ An array of objects describing the flow definitions.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ A token to resume pagination.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ListFlowDefinitionsResponse' value with any optional fields omitted.
mkListFlowDefinitionsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListFlowDefinitionsResponse
mkListFlowDefinitionsResponse responseStatus
  = ListFlowDefinitionsResponse'{flowDefinitionSummaries =
                                   Core.mempty,
                                 nextToken = Core.Nothing, responseStatus}

-- | An array of objects describing the flow definitions.
--
-- /Note:/ Consider using 'flowDefinitionSummaries' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfdrrsFlowDefinitionSummaries :: Lens.Lens' ListFlowDefinitionsResponse [Types.FlowDefinitionSummary]
lfdrrsFlowDefinitionSummaries = Lens.field @"flowDefinitionSummaries"
{-# INLINEABLE lfdrrsFlowDefinitionSummaries #-}
{-# DEPRECATED flowDefinitionSummaries "Use generic-lens or generic-optics with 'flowDefinitionSummaries' instead"  #-}

-- | A token to resume pagination.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfdrrsNextToken :: Lens.Lens' ListFlowDefinitionsResponse (Core.Maybe Types.NextToken)
lfdrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lfdrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lfdrrsResponseStatus :: Lens.Lens' ListFlowDefinitionsResponse Core.Int
lfdrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lfdrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
