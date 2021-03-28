{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.GetComplianceSummaryByResourceType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the number of resources that are compliant and the number that are noncompliant. You can specify one or more resource types to get these numbers for each resource type. The maximum number returned is 100.
module Network.AWS.Config.GetComplianceSummaryByResourceType
    (
    -- * Creating a request
      GetComplianceSummaryByResourceType (..)
    , mkGetComplianceSummaryByResourceType
    -- ** Request lenses
    , gcsbrtResourceTypes

    -- * Destructuring the response
    , GetComplianceSummaryByResourceTypeResponse (..)
    , mkGetComplianceSummaryByResourceTypeResponse
    -- ** Response lenses
    , gcsbrtrrsComplianceSummariesByResourceType
    , gcsbrtrrsResponseStatus
    ) where

import qualified Network.AWS.Config.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | 
--
-- /See:/ 'mkGetComplianceSummaryByResourceType' smart constructor.
newtype GetComplianceSummaryByResourceType = GetComplianceSummaryByResourceType'
  { resourceTypes :: Core.Maybe [Types.StringWithCharLimit256]
    -- ^ Specify one or more resource types to get the number of resources that are compliant and the number that are noncompliant for each resource type.
--
-- For this request, you can specify an AWS resource type such as @AWS::EC2::Instance@ . You can specify that the resource type is an AWS account by specifying @AWS::::Account@ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetComplianceSummaryByResourceType' value with any optional fields omitted.
mkGetComplianceSummaryByResourceType
    :: GetComplianceSummaryByResourceType
mkGetComplianceSummaryByResourceType
  = GetComplianceSummaryByResourceType'{resourceTypes = Core.Nothing}

-- | Specify one or more resource types to get the number of resources that are compliant and the number that are noncompliant for each resource type.
--
-- For this request, you can specify an AWS resource type such as @AWS::EC2::Instance@ . You can specify that the resource type is an AWS account by specifying @AWS::::Account@ .
--
-- /Note:/ Consider using 'resourceTypes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcsbrtResourceTypes :: Lens.Lens' GetComplianceSummaryByResourceType (Core.Maybe [Types.StringWithCharLimit256])
gcsbrtResourceTypes = Lens.field @"resourceTypes"
{-# INLINEABLE gcsbrtResourceTypes #-}
{-# DEPRECATED resourceTypes "Use generic-lens or generic-optics with 'resourceTypes' instead"  #-}

instance Core.ToQuery GetComplianceSummaryByResourceType where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetComplianceSummaryByResourceType where
        toHeaders GetComplianceSummaryByResourceType{..}
          = Core.pure
              ("X-Amz-Target",
               "StarlingDoveService.GetComplianceSummaryByResourceType")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetComplianceSummaryByResourceType where
        toJSON GetComplianceSummaryByResourceType{..}
          = Core.object
              (Core.catMaybes [("ResourceTypes" Core..=) Core.<$> resourceTypes])

instance Core.AWSRequest GetComplianceSummaryByResourceType where
        type Rs GetComplianceSummaryByResourceType =
             GetComplianceSummaryByResourceTypeResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetComplianceSummaryByResourceTypeResponse' Core.<$>
                   (x Core..:? "ComplianceSummariesByResourceType") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | 
--
-- /See:/ 'mkGetComplianceSummaryByResourceTypeResponse' smart constructor.
data GetComplianceSummaryByResourceTypeResponse = GetComplianceSummaryByResourceTypeResponse'
  { complianceSummariesByResourceType :: Core.Maybe [Types.ComplianceSummaryByResourceType]
    -- ^ The number of resources that are compliant and the number that are noncompliant. If one or more resource types were provided with the request, the numbers are returned for each resource type. The maximum number returned is 100.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'GetComplianceSummaryByResourceTypeResponse' value with any optional fields omitted.
mkGetComplianceSummaryByResourceTypeResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetComplianceSummaryByResourceTypeResponse
mkGetComplianceSummaryByResourceTypeResponse responseStatus
  = GetComplianceSummaryByResourceTypeResponse'{complianceSummariesByResourceType
                                                  = Core.Nothing,
                                                responseStatus}

-- | The number of resources that are compliant and the number that are noncompliant. If one or more resource types were provided with the request, the numbers are returned for each resource type. The maximum number returned is 100.
--
-- /Note:/ Consider using 'complianceSummariesByResourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcsbrtrrsComplianceSummariesByResourceType :: Lens.Lens' GetComplianceSummaryByResourceTypeResponse (Core.Maybe [Types.ComplianceSummaryByResourceType])
gcsbrtrrsComplianceSummariesByResourceType = Lens.field @"complianceSummariesByResourceType"
{-# INLINEABLE gcsbrtrrsComplianceSummariesByResourceType #-}
{-# DEPRECATED complianceSummariesByResourceType "Use generic-lens or generic-optics with 'complianceSummariesByResourceType' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcsbrtrrsResponseStatus :: Lens.Lens' GetComplianceSummaryByResourceTypeResponse Core.Int
gcsbrtrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gcsbrtrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
