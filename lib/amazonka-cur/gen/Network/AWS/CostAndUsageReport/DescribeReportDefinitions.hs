{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostAndUsageReport.DescribeReportDefinitions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the AWS Cost and Usage reports available to this account.
--
-- This operation returns paginated results.
module Network.AWS.CostAndUsageReport.DescribeReportDefinitions
    (
    -- * Creating a request
      DescribeReportDefinitions (..)
    , mkDescribeReportDefinitions
    -- ** Request lenses
    , drdMaxResults
    , drdNextToken

    -- * Destructuring the response
    , DescribeReportDefinitionsResponse (..)
    , mkDescribeReportDefinitionsResponse
    -- ** Response lenses
    , drdrrsNextToken
    , drdrrsReportDefinitions
    , drdrrsResponseStatus
    ) where

import qualified Network.AWS.CostAndUsageReport.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Requests a list of AWS Cost and Usage reports owned by the account.
--
-- /See:/ 'mkDescribeReportDefinitions' smart constructor.
data DescribeReportDefinitions = DescribeReportDefinitions'
  { maxResults :: Core.Maybe Core.Natural
  , nextToken :: Core.Maybe Types.GenericString
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeReportDefinitions' value with any optional fields omitted.
mkDescribeReportDefinitions
    :: DescribeReportDefinitions
mkDescribeReportDefinitions
  = DescribeReportDefinitions'{maxResults = Core.Nothing,
                               nextToken = Core.Nothing}

-- | Undocumented field.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drdMaxResults :: Lens.Lens' DescribeReportDefinitions (Core.Maybe Core.Natural)
drdMaxResults = Lens.field @"maxResults"
{-# INLINEABLE drdMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drdNextToken :: Lens.Lens' DescribeReportDefinitions (Core.Maybe Types.GenericString)
drdNextToken = Lens.field @"nextToken"
{-# INLINEABLE drdNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery DescribeReportDefinitions where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeReportDefinitions where
        toHeaders DescribeReportDefinitions{..}
          = Core.pure
              ("X-Amz-Target",
               "AWSOrigamiServiceGatewayService.DescribeReportDefinitions")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DescribeReportDefinitions where
        toJSON DescribeReportDefinitions{..}
          = Core.object
              (Core.catMaybes
                 [("MaxResults" Core..=) Core.<$> maxResults,
                  ("NextToken" Core..=) Core.<$> nextToken])

instance Core.AWSRequest DescribeReportDefinitions where
        type Rs DescribeReportDefinitions =
             DescribeReportDefinitionsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeReportDefinitionsResponse' Core.<$>
                   (x Core..:? "NextToken") Core.<*> x Core..:? "ReportDefinitions"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeReportDefinitions where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"reportDefinitions" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | If the action is successful, the service sends back an HTTP 200 response.
--
-- /See:/ 'mkDescribeReportDefinitionsResponse' smart constructor.
data DescribeReportDefinitionsResponse = DescribeReportDefinitionsResponse'
  { nextToken :: Core.Maybe Types.NextToken
  , reportDefinitions :: Core.Maybe [Types.ReportDefinition]
    -- ^ A list of AWS Cost and Usage reports owned by the account.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeReportDefinitionsResponse' value with any optional fields omitted.
mkDescribeReportDefinitionsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeReportDefinitionsResponse
mkDescribeReportDefinitionsResponse responseStatus
  = DescribeReportDefinitionsResponse'{nextToken = Core.Nothing,
                                       reportDefinitions = Core.Nothing, responseStatus}

-- | Undocumented field.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drdrrsNextToken :: Lens.Lens' DescribeReportDefinitionsResponse (Core.Maybe Types.NextToken)
drdrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE drdrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | A list of AWS Cost and Usage reports owned by the account.
--
-- /Note:/ Consider using 'reportDefinitions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drdrrsReportDefinitions :: Lens.Lens' DescribeReportDefinitionsResponse (Core.Maybe [Types.ReportDefinition])
drdrrsReportDefinitions = Lens.field @"reportDefinitions"
{-# INLINEABLE drdrrsReportDefinitions #-}
{-# DEPRECATED reportDefinitions "Use generic-lens or generic-optics with 'reportDefinitions' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drdrrsResponseStatus :: Lens.Lens' DescribeReportDefinitionsResponse Core.Int
drdrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE drdrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
