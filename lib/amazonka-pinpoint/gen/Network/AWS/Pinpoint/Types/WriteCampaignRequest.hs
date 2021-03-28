{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.WriteCampaignRequest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.WriteCampaignRequest
  ( WriteCampaignRequest (..)
  -- * Smart constructor
  , mkWriteCampaignRequest
  -- * Lenses
  , wcrAdditionalTreatments
  , wcrCustomDeliveryConfiguration
  , wcrDescription
  , wcrHoldoutPercent
  , wcrHook
  , wcrIsPaused
  , wcrLimits
  , wcrMessageConfiguration
  , wcrName
  , wcrSchedule
  , wcrSegmentId
  , wcrSegmentVersion
  , wcrTemplateConfiguration
  , wcrTreatmentDescription
  , wcrTreatmentName
  , wcrTags
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pinpoint.Types.CampaignHook as Types
import qualified Network.AWS.Pinpoint.Types.CampaignLimits as Types
import qualified Network.AWS.Pinpoint.Types.CustomDeliveryConfiguration as Types
import qualified Network.AWS.Pinpoint.Types.MessageConfiguration as Types
import qualified Network.AWS.Pinpoint.Types.Schedule as Types
import qualified Network.AWS.Pinpoint.Types.TemplateConfiguration as Types
import qualified Network.AWS.Pinpoint.Types.WriteTreatmentResource as Types
import qualified Network.AWS.Prelude as Core

-- | Specifies the configuration and other settings for a campaign.
--
-- /See:/ 'mkWriteCampaignRequest' smart constructor.
data WriteCampaignRequest = WriteCampaignRequest'
  { additionalTreatments :: Core.Maybe [Types.WriteTreatmentResource]
    -- ^ An array of requests that defines additional treatments for the campaign, in addition to the default treatment for the campaign.
  , customDeliveryConfiguration :: Core.Maybe Types.CustomDeliveryConfiguration
    -- ^ The delivery configuration settings for sending the campaign through a custom channel. This object is required if the MessageConfiguration object for the campaign specifies a CustomMessage object.
  , description :: Core.Maybe Core.Text
    -- ^ A custom description of the campaign.
  , holdoutPercent :: Core.Maybe Core.Int
    -- ^ The allocated percentage of users (segment members) who shouldn't receive messages from the campaign.
  , hook :: Core.Maybe Types.CampaignHook
    -- ^ The settings for the AWS Lambda function to invoke as a code hook for the campaign. You can use this hook to customize the segment that's used by the campaign.
  , isPaused :: Core.Maybe Core.Bool
    -- ^ Specifies whether to pause the campaign. A paused campaign doesn't run unless you resume it by changing this value to false.
  , limits :: Core.Maybe Types.CampaignLimits
    -- ^ The messaging limits for the campaign.
  , messageConfiguration :: Core.Maybe Types.MessageConfiguration
    -- ^ The message configuration settings for the campaign.
  , name :: Core.Maybe Core.Text
    -- ^ A custom name for the campaign.
  , schedule :: Core.Maybe Types.Schedule
    -- ^ The schedule settings for the campaign.
  , segmentId :: Core.Maybe Core.Text
    -- ^ The unique identifier for the segment to associate with the campaign.
  , segmentVersion :: Core.Maybe Core.Int
    -- ^ The version of the segment to associate with the campaign.
  , templateConfiguration :: Core.Maybe Types.TemplateConfiguration
    -- ^ The message template to use for the campaign.
  , treatmentDescription :: Core.Maybe Core.Text
    -- ^ A custom description of the default treatment for the campaign.
  , treatmentName :: Core.Maybe Core.Text
    -- ^ A custom name of the default treatment for the campaign, if the campaign has multiple treatments. A /treatment/ is a variation of a campaign that's used for A/B testing.
  , tags :: Core.Maybe (Core.HashMap Core.Text Core.Text)
    -- ^ A string-to-string map of key-value pairs that defines the tags to associate with the campaign. Each tag consists of a required tag key and an associated tag value.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'WriteCampaignRequest' value with any optional fields omitted.
mkWriteCampaignRequest
    :: WriteCampaignRequest
mkWriteCampaignRequest
  = WriteCampaignRequest'{additionalTreatments = Core.Nothing,
                          customDeliveryConfiguration = Core.Nothing,
                          description = Core.Nothing, holdoutPercent = Core.Nothing,
                          hook = Core.Nothing, isPaused = Core.Nothing,
                          limits = Core.Nothing, messageConfiguration = Core.Nothing,
                          name = Core.Nothing, schedule = Core.Nothing,
                          segmentId = Core.Nothing, segmentVersion = Core.Nothing,
                          templateConfiguration = Core.Nothing,
                          treatmentDescription = Core.Nothing, treatmentName = Core.Nothing,
                          tags = Core.Nothing}

-- | An array of requests that defines additional treatments for the campaign, in addition to the default treatment for the campaign.
--
-- /Note:/ Consider using 'additionalTreatments' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrAdditionalTreatments :: Lens.Lens' WriteCampaignRequest (Core.Maybe [Types.WriteTreatmentResource])
wcrAdditionalTreatments = Lens.field @"additionalTreatments"
{-# INLINEABLE wcrAdditionalTreatments #-}
{-# DEPRECATED additionalTreatments "Use generic-lens or generic-optics with 'additionalTreatments' instead"  #-}

-- | The delivery configuration settings for sending the campaign through a custom channel. This object is required if the MessageConfiguration object for the campaign specifies a CustomMessage object.
--
-- /Note:/ Consider using 'customDeliveryConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrCustomDeliveryConfiguration :: Lens.Lens' WriteCampaignRequest (Core.Maybe Types.CustomDeliveryConfiguration)
wcrCustomDeliveryConfiguration = Lens.field @"customDeliveryConfiguration"
{-# INLINEABLE wcrCustomDeliveryConfiguration #-}
{-# DEPRECATED customDeliveryConfiguration "Use generic-lens or generic-optics with 'customDeliveryConfiguration' instead"  #-}

-- | A custom description of the campaign.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrDescription :: Lens.Lens' WriteCampaignRequest (Core.Maybe Core.Text)
wcrDescription = Lens.field @"description"
{-# INLINEABLE wcrDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The allocated percentage of users (segment members) who shouldn't receive messages from the campaign.
--
-- /Note:/ Consider using 'holdoutPercent' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrHoldoutPercent :: Lens.Lens' WriteCampaignRequest (Core.Maybe Core.Int)
wcrHoldoutPercent = Lens.field @"holdoutPercent"
{-# INLINEABLE wcrHoldoutPercent #-}
{-# DEPRECATED holdoutPercent "Use generic-lens or generic-optics with 'holdoutPercent' instead"  #-}

-- | The settings for the AWS Lambda function to invoke as a code hook for the campaign. You can use this hook to customize the segment that's used by the campaign.
--
-- /Note:/ Consider using 'hook' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrHook :: Lens.Lens' WriteCampaignRequest (Core.Maybe Types.CampaignHook)
wcrHook = Lens.field @"hook"
{-# INLINEABLE wcrHook #-}
{-# DEPRECATED hook "Use generic-lens or generic-optics with 'hook' instead"  #-}

-- | Specifies whether to pause the campaign. A paused campaign doesn't run unless you resume it by changing this value to false.
--
-- /Note:/ Consider using 'isPaused' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrIsPaused :: Lens.Lens' WriteCampaignRequest (Core.Maybe Core.Bool)
wcrIsPaused = Lens.field @"isPaused"
{-# INLINEABLE wcrIsPaused #-}
{-# DEPRECATED isPaused "Use generic-lens or generic-optics with 'isPaused' instead"  #-}

-- | The messaging limits for the campaign.
--
-- /Note:/ Consider using 'limits' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrLimits :: Lens.Lens' WriteCampaignRequest (Core.Maybe Types.CampaignLimits)
wcrLimits = Lens.field @"limits"
{-# INLINEABLE wcrLimits #-}
{-# DEPRECATED limits "Use generic-lens or generic-optics with 'limits' instead"  #-}

-- | The message configuration settings for the campaign.
--
-- /Note:/ Consider using 'messageConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrMessageConfiguration :: Lens.Lens' WriteCampaignRequest (Core.Maybe Types.MessageConfiguration)
wcrMessageConfiguration = Lens.field @"messageConfiguration"
{-# INLINEABLE wcrMessageConfiguration #-}
{-# DEPRECATED messageConfiguration "Use generic-lens or generic-optics with 'messageConfiguration' instead"  #-}

-- | A custom name for the campaign.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrName :: Lens.Lens' WriteCampaignRequest (Core.Maybe Core.Text)
wcrName = Lens.field @"name"
{-# INLINEABLE wcrName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | The schedule settings for the campaign.
--
-- /Note:/ Consider using 'schedule' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrSchedule :: Lens.Lens' WriteCampaignRequest (Core.Maybe Types.Schedule)
wcrSchedule = Lens.field @"schedule"
{-# INLINEABLE wcrSchedule #-}
{-# DEPRECATED schedule "Use generic-lens or generic-optics with 'schedule' instead"  #-}

-- | The unique identifier for the segment to associate with the campaign.
--
-- /Note:/ Consider using 'segmentId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrSegmentId :: Lens.Lens' WriteCampaignRequest (Core.Maybe Core.Text)
wcrSegmentId = Lens.field @"segmentId"
{-# INLINEABLE wcrSegmentId #-}
{-# DEPRECATED segmentId "Use generic-lens or generic-optics with 'segmentId' instead"  #-}

-- | The version of the segment to associate with the campaign.
--
-- /Note:/ Consider using 'segmentVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrSegmentVersion :: Lens.Lens' WriteCampaignRequest (Core.Maybe Core.Int)
wcrSegmentVersion = Lens.field @"segmentVersion"
{-# INLINEABLE wcrSegmentVersion #-}
{-# DEPRECATED segmentVersion "Use generic-lens or generic-optics with 'segmentVersion' instead"  #-}

-- | The message template to use for the campaign.
--
-- /Note:/ Consider using 'templateConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrTemplateConfiguration :: Lens.Lens' WriteCampaignRequest (Core.Maybe Types.TemplateConfiguration)
wcrTemplateConfiguration = Lens.field @"templateConfiguration"
{-# INLINEABLE wcrTemplateConfiguration #-}
{-# DEPRECATED templateConfiguration "Use generic-lens or generic-optics with 'templateConfiguration' instead"  #-}

-- | A custom description of the default treatment for the campaign.
--
-- /Note:/ Consider using 'treatmentDescription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrTreatmentDescription :: Lens.Lens' WriteCampaignRequest (Core.Maybe Core.Text)
wcrTreatmentDescription = Lens.field @"treatmentDescription"
{-# INLINEABLE wcrTreatmentDescription #-}
{-# DEPRECATED treatmentDescription "Use generic-lens or generic-optics with 'treatmentDescription' instead"  #-}

-- | A custom name of the default treatment for the campaign, if the campaign has multiple treatments. A /treatment/ is a variation of a campaign that's used for A/B testing.
--
-- /Note:/ Consider using 'treatmentName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrTreatmentName :: Lens.Lens' WriteCampaignRequest (Core.Maybe Core.Text)
wcrTreatmentName = Lens.field @"treatmentName"
{-# INLINEABLE wcrTreatmentName #-}
{-# DEPRECATED treatmentName "Use generic-lens or generic-optics with 'treatmentName' instead"  #-}

-- | A string-to-string map of key-value pairs that defines the tags to associate with the campaign. Each tag consists of a required tag key and an associated tag value.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wcrTags :: Lens.Lens' WriteCampaignRequest (Core.Maybe (Core.HashMap Core.Text Core.Text))
wcrTags = Lens.field @"tags"
{-# INLINEABLE wcrTags #-}
{-# DEPRECATED tags "Use generic-lens or generic-optics with 'tags' instead"  #-}

instance Core.FromJSON WriteCampaignRequest where
        toJSON WriteCampaignRequest{..}
          = Core.object
              (Core.catMaybes
                 [("AdditionalTreatments" Core..=) Core.<$> additionalTreatments,
                  ("CustomDeliveryConfiguration" Core..=) Core.<$>
                    customDeliveryConfiguration,
                  ("Description" Core..=) Core.<$> description,
                  ("HoldoutPercent" Core..=) Core.<$> holdoutPercent,
                  ("Hook" Core..=) Core.<$> hook,
                  ("IsPaused" Core..=) Core.<$> isPaused,
                  ("Limits" Core..=) Core.<$> limits,
                  ("MessageConfiguration" Core..=) Core.<$> messageConfiguration,
                  ("Name" Core..=) Core.<$> name,
                  ("Schedule" Core..=) Core.<$> schedule,
                  ("SegmentId" Core..=) Core.<$> segmentId,
                  ("SegmentVersion" Core..=) Core.<$> segmentVersion,
                  ("TemplateConfiguration" Core..=) Core.<$> templateConfiguration,
                  ("TreatmentDescription" Core..=) Core.<$> treatmentDescription,
                  ("TreatmentName" Core..=) Core.<$> treatmentName,
                  ("tags" Core..=) Core.<$> tags])
