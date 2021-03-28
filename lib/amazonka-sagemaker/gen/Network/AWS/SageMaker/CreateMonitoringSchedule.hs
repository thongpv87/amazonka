{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.CreateMonitoringSchedule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a schedule that regularly starts Amazon SageMaker Processing Jobs to monitor the data captured for an Amazon SageMaker Endoint.
module Network.AWS.SageMaker.CreateMonitoringSchedule
    (
    -- * Creating a request
      CreateMonitoringSchedule (..)
    , mkCreateMonitoringSchedule
    -- ** Request lenses
    , cmsMonitoringScheduleName
    , cmsMonitoringScheduleConfig
    , cmsTags

    -- * Destructuring the response
    , CreateMonitoringScheduleResponse (..)
    , mkCreateMonitoringScheduleResponse
    -- ** Response lenses
    , cmsrrsMonitoringScheduleArn
    , cmsrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SageMaker.Types as Types

-- | /See:/ 'mkCreateMonitoringSchedule' smart constructor.
data CreateMonitoringSchedule = CreateMonitoringSchedule'
  { monitoringScheduleName :: Types.MonitoringScheduleName
    -- ^ The name of the monitoring schedule. The name must be unique within an AWS Region within an AWS account.
  , monitoringScheduleConfig :: Types.MonitoringScheduleConfig
    -- ^ The configuration object that specifies the monitoring schedule and defines the monitoring job.
  , tags :: Core.Maybe [Types.Tag]
    -- ^ (Optional) An array of key-value pairs. For more information, see < https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateMonitoringSchedule' value with any optional fields omitted.
mkCreateMonitoringSchedule
    :: Types.MonitoringScheduleName -- ^ 'monitoringScheduleName'
    -> Types.MonitoringScheduleConfig -- ^ 'monitoringScheduleConfig'
    -> CreateMonitoringSchedule
mkCreateMonitoringSchedule monitoringScheduleName
  monitoringScheduleConfig
  = CreateMonitoringSchedule'{monitoringScheduleName,
                              monitoringScheduleConfig, tags = Core.Nothing}

-- | The name of the monitoring schedule. The name must be unique within an AWS Region within an AWS account.
--
-- /Note:/ Consider using 'monitoringScheduleName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmsMonitoringScheduleName :: Lens.Lens' CreateMonitoringSchedule Types.MonitoringScheduleName
cmsMonitoringScheduleName = Lens.field @"monitoringScheduleName"
{-# INLINEABLE cmsMonitoringScheduleName #-}
{-# DEPRECATED monitoringScheduleName "Use generic-lens or generic-optics with 'monitoringScheduleName' instead"  #-}

-- | The configuration object that specifies the monitoring schedule and defines the monitoring job.
--
-- /Note:/ Consider using 'monitoringScheduleConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmsMonitoringScheduleConfig :: Lens.Lens' CreateMonitoringSchedule Types.MonitoringScheduleConfig
cmsMonitoringScheduleConfig = Lens.field @"monitoringScheduleConfig"
{-# INLINEABLE cmsMonitoringScheduleConfig #-}
{-# DEPRECATED monitoringScheduleConfig "Use generic-lens or generic-optics with 'monitoringScheduleConfig' instead"  #-}

-- | (Optional) An array of key-value pairs. For more information, see < https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags> in the /AWS Billing and Cost Management User Guide/ .
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmsTags :: Lens.Lens' CreateMonitoringSchedule (Core.Maybe [Types.Tag])
cmsTags = Lens.field @"tags"
{-# INLINEABLE cmsTags #-}
{-# DEPRECATED tags "Use generic-lens or generic-optics with 'tags' instead"  #-}

instance Core.ToQuery CreateMonitoringSchedule where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders CreateMonitoringSchedule where
        toHeaders CreateMonitoringSchedule{..}
          = Core.pure ("X-Amz-Target", "SageMaker.CreateMonitoringSchedule")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON CreateMonitoringSchedule where
        toJSON CreateMonitoringSchedule{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just
                    ("MonitoringScheduleName" Core..= monitoringScheduleName),
                  Core.Just
                    ("MonitoringScheduleConfig" Core..= monitoringScheduleConfig),
                  ("Tags" Core..=) Core.<$> tags])

instance Core.AWSRequest CreateMonitoringSchedule where
        type Rs CreateMonitoringSchedule = CreateMonitoringScheduleResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 CreateMonitoringScheduleResponse' Core.<$>
                   (x Core..: "MonitoringScheduleArn") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkCreateMonitoringScheduleResponse' smart constructor.
data CreateMonitoringScheduleResponse = CreateMonitoringScheduleResponse'
  { monitoringScheduleArn :: Types.MonitoringScheduleArn
    -- ^ The Amazon Resource Name (ARN) of the monitoring schedule.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateMonitoringScheduleResponse' value with any optional fields omitted.
mkCreateMonitoringScheduleResponse
    :: Types.MonitoringScheduleArn -- ^ 'monitoringScheduleArn'
    -> Core.Int -- ^ 'responseStatus'
    -> CreateMonitoringScheduleResponse
mkCreateMonitoringScheduleResponse monitoringScheduleArn
  responseStatus
  = CreateMonitoringScheduleResponse'{monitoringScheduleArn,
                                      responseStatus}

-- | The Amazon Resource Name (ARN) of the monitoring schedule.
--
-- /Note:/ Consider using 'monitoringScheduleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmsrrsMonitoringScheduleArn :: Lens.Lens' CreateMonitoringScheduleResponse Types.MonitoringScheduleArn
cmsrrsMonitoringScheduleArn = Lens.field @"monitoringScheduleArn"
{-# INLINEABLE cmsrrsMonitoringScheduleArn #-}
{-# DEPRECATED monitoringScheduleArn "Use generic-lens or generic-optics with 'monitoringScheduleArn' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmsrrsResponseStatus :: Lens.Lens' CreateMonitoringScheduleResponse Core.Int
cmsrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE cmsrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
