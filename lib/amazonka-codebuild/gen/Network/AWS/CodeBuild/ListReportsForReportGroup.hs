{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.ListReportsForReportGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of ARNs for the reports that belong to a @ReportGroup@ . 
--
-- This operation returns paginated results.
module Network.AWS.CodeBuild.ListReportsForReportGroup
    (
    -- * Creating a request
      ListReportsForReportGroup (..)
    , mkListReportsForReportGroup
    -- ** Request lenses
    , lrfrgReportGroupArn
    , lrfrgFilter
    , lrfrgMaxResults
    , lrfrgNextToken
    , lrfrgSortOrder

    -- * Destructuring the response
    , ListReportsForReportGroupResponse (..)
    , mkListReportsForReportGroupResponse
    -- ** Response lenses
    , lrfrgrrsNextToken
    , lrfrgrrsReports
    , lrfrgrrsResponseStatus
    ) where

import qualified Network.AWS.CodeBuild.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListReportsForReportGroup' smart constructor.
data ListReportsForReportGroup = ListReportsForReportGroup'
  { reportGroupArn :: Core.Text
    -- ^ The ARN of the report group for which you want to return report ARNs. 
  , filter :: Core.Maybe Types.ReportFilter
    -- ^ A @ReportFilter@ object used to filter the returned reports. 
  , maxResults :: Core.Maybe Core.Natural
    -- ^ The maximum number of paginated reports in this report group returned per response. Use @nextToken@ to iterate pages in the list of returned @Report@ objects. The default value is 100. 
  , nextToken :: Core.Maybe Core.Text
    -- ^ During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. 
  , sortOrder :: Core.Maybe Types.SortOrderType
    -- ^ Use to specify whether the results are returned in ascending or descending order. 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListReportsForReportGroup' value with any optional fields omitted.
mkListReportsForReportGroup
    :: Core.Text -- ^ 'reportGroupArn'
    -> ListReportsForReportGroup
mkListReportsForReportGroup reportGroupArn
  = ListReportsForReportGroup'{reportGroupArn, filter = Core.Nothing,
                               maxResults = Core.Nothing, nextToken = Core.Nothing,
                               sortOrder = Core.Nothing}

-- | The ARN of the report group for which you want to return report ARNs. 
--
-- /Note:/ Consider using 'reportGroupArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrfrgReportGroupArn :: Lens.Lens' ListReportsForReportGroup Core.Text
lrfrgReportGroupArn = Lens.field @"reportGroupArn"
{-# INLINEABLE lrfrgReportGroupArn #-}
{-# DEPRECATED reportGroupArn "Use generic-lens or generic-optics with 'reportGroupArn' instead"  #-}

-- | A @ReportFilter@ object used to filter the returned reports. 
--
-- /Note:/ Consider using 'filter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrfrgFilter :: Lens.Lens' ListReportsForReportGroup (Core.Maybe Types.ReportFilter)
lrfrgFilter = Lens.field @"filter"
{-# INLINEABLE lrfrgFilter #-}
{-# DEPRECATED filter "Use generic-lens or generic-optics with 'filter' instead"  #-}

-- | The maximum number of paginated reports in this report group returned per response. Use @nextToken@ to iterate pages in the list of returned @Report@ objects. The default value is 100. 
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrfrgMaxResults :: Lens.Lens' ListReportsForReportGroup (Core.Maybe Core.Natural)
lrfrgMaxResults = Lens.field @"maxResults"
{-# INLINEABLE lrfrgMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. 
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrfrgNextToken :: Lens.Lens' ListReportsForReportGroup (Core.Maybe Core.Text)
lrfrgNextToken = Lens.field @"nextToken"
{-# INLINEABLE lrfrgNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | Use to specify whether the results are returned in ascending or descending order. 
--
-- /Note:/ Consider using 'sortOrder' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrfrgSortOrder :: Lens.Lens' ListReportsForReportGroup (Core.Maybe Types.SortOrderType)
lrfrgSortOrder = Lens.field @"sortOrder"
{-# INLINEABLE lrfrgSortOrder #-}
{-# DEPRECATED sortOrder "Use generic-lens or generic-optics with 'sortOrder' instead"  #-}

instance Core.ToQuery ListReportsForReportGroup where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListReportsForReportGroup where
        toHeaders ListReportsForReportGroup{..}
          = Core.pure
              ("X-Amz-Target", "CodeBuild_20161006.ListReportsForReportGroup")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListReportsForReportGroup where
        toJSON ListReportsForReportGroup{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("reportGroupArn" Core..= reportGroupArn),
                  ("filter" Core..=) Core.<$> filter,
                  ("maxResults" Core..=) Core.<$> maxResults,
                  ("nextToken" Core..=) Core.<$> nextToken,
                  ("sortOrder" Core..=) Core.<$> sortOrder])

instance Core.AWSRequest ListReportsForReportGroup where
        type Rs ListReportsForReportGroup =
             ListReportsForReportGroupResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListReportsForReportGroupResponse' Core.<$>
                   (x Core..:? "nextToken") Core.<*> x Core..:? "reports" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListReportsForReportGroup where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop (rs Lens.^? Lens.field @"reports" Core.. Lens._Just) =
            Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkListReportsForReportGroupResponse' smart constructor.
data ListReportsForReportGroupResponse = ListReportsForReportGroupResponse'
  { nextToken :: Core.Maybe Core.Text
    -- ^ During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. 
  , reports :: Core.Maybe (Core.NonEmpty Types.NonEmptyString)
    -- ^ The list of report ARNs. 
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListReportsForReportGroupResponse' value with any optional fields omitted.
mkListReportsForReportGroupResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListReportsForReportGroupResponse
mkListReportsForReportGroupResponse responseStatus
  = ListReportsForReportGroupResponse'{nextToken = Core.Nothing,
                                       reports = Core.Nothing, responseStatus}

-- | During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned. 
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrfrgrrsNextToken :: Lens.Lens' ListReportsForReportGroupResponse (Core.Maybe Core.Text)
lrfrgrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lrfrgrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The list of report ARNs. 
--
-- /Note:/ Consider using 'reports' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrfrgrrsReports :: Lens.Lens' ListReportsForReportGroupResponse (Core.Maybe (Core.NonEmpty Types.NonEmptyString))
lrfrgrrsReports = Lens.field @"reports"
{-# INLINEABLE lrfrgrrsReports #-}
{-# DEPRECATED reports "Use generic-lens or generic-optics with 'reports' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrfrgrrsResponseStatus :: Lens.Lens' ListReportsForReportGroupResponse Core.Int
lrfrgrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lrfrgrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
