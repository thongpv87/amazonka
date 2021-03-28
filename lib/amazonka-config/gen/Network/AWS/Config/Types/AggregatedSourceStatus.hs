{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.AggregatedSourceStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Config.Types.AggregatedSourceStatus
  ( AggregatedSourceStatus (..)
  -- * Smart constructor
  , mkAggregatedSourceStatus
  -- * Lenses
  , assAwsRegion
  , assLastErrorCode
  , assLastErrorMessage
  , assLastUpdateStatus
  , assLastUpdateTime
  , assSourceId
  , assSourceType
  ) where

import qualified Network.AWS.Config.Types.AggregatedSourceStatusType as Types
import qualified Network.AWS.Config.Types.AggregatedSourceType as Types
import qualified Network.AWS.Config.Types.AwsRegion as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The current sync status between the source and the aggregator account.
--
-- /See:/ 'mkAggregatedSourceStatus' smart constructor.
data AggregatedSourceStatus = AggregatedSourceStatus'
  { awsRegion :: Core.Maybe Types.AwsRegion
    -- ^ The region authorized to collect aggregated data.
  , lastErrorCode :: Core.Maybe Core.Text
    -- ^ The error code that AWS Config returned when the source account aggregation last failed.
  , lastErrorMessage :: Core.Maybe Core.Text
    -- ^ The message indicating that the source account aggregation failed due to an error.
  , lastUpdateStatus :: Core.Maybe Types.AggregatedSourceStatusType
    -- ^ Filters the last updated status type.
--
--
--     * Valid value FAILED indicates errors while moving data.
--
--
--     * Valid value SUCCEEDED indicates the data was successfully moved.
--
--
--     * Valid value OUTDATED indicates the data is not the most recent.
--
--
  , lastUpdateTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The time of the last update.
  , sourceId :: Core.Maybe Core.Text
    -- ^ The source account ID or an organization.
  , sourceType :: Core.Maybe Types.AggregatedSourceType
    -- ^ The source account or an organization.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'AggregatedSourceStatus' value with any optional fields omitted.
mkAggregatedSourceStatus
    :: AggregatedSourceStatus
mkAggregatedSourceStatus
  = AggregatedSourceStatus'{awsRegion = Core.Nothing,
                            lastErrorCode = Core.Nothing, lastErrorMessage = Core.Nothing,
                            lastUpdateStatus = Core.Nothing, lastUpdateTime = Core.Nothing,
                            sourceId = Core.Nothing, sourceType = Core.Nothing}

-- | The region authorized to collect aggregated data.
--
-- /Note:/ Consider using 'awsRegion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
assAwsRegion :: Lens.Lens' AggregatedSourceStatus (Core.Maybe Types.AwsRegion)
assAwsRegion = Lens.field @"awsRegion"
{-# INLINEABLE assAwsRegion #-}
{-# DEPRECATED awsRegion "Use generic-lens or generic-optics with 'awsRegion' instead"  #-}

-- | The error code that AWS Config returned when the source account aggregation last failed.
--
-- /Note:/ Consider using 'lastErrorCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
assLastErrorCode :: Lens.Lens' AggregatedSourceStatus (Core.Maybe Core.Text)
assLastErrorCode = Lens.field @"lastErrorCode"
{-# INLINEABLE assLastErrorCode #-}
{-# DEPRECATED lastErrorCode "Use generic-lens or generic-optics with 'lastErrorCode' instead"  #-}

-- | The message indicating that the source account aggregation failed due to an error.
--
-- /Note:/ Consider using 'lastErrorMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
assLastErrorMessage :: Lens.Lens' AggregatedSourceStatus (Core.Maybe Core.Text)
assLastErrorMessage = Lens.field @"lastErrorMessage"
{-# INLINEABLE assLastErrorMessage #-}
{-# DEPRECATED lastErrorMessage "Use generic-lens or generic-optics with 'lastErrorMessage' instead"  #-}

-- | Filters the last updated status type.
--
--
--     * Valid value FAILED indicates errors while moving data.
--
--
--     * Valid value SUCCEEDED indicates the data was successfully moved.
--
--
--     * Valid value OUTDATED indicates the data is not the most recent.
--
--
--
-- /Note:/ Consider using 'lastUpdateStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
assLastUpdateStatus :: Lens.Lens' AggregatedSourceStatus (Core.Maybe Types.AggregatedSourceStatusType)
assLastUpdateStatus = Lens.field @"lastUpdateStatus"
{-# INLINEABLE assLastUpdateStatus #-}
{-# DEPRECATED lastUpdateStatus "Use generic-lens or generic-optics with 'lastUpdateStatus' instead"  #-}

-- | The time of the last update.
--
-- /Note:/ Consider using 'lastUpdateTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
assLastUpdateTime :: Lens.Lens' AggregatedSourceStatus (Core.Maybe Core.NominalDiffTime)
assLastUpdateTime = Lens.field @"lastUpdateTime"
{-# INLINEABLE assLastUpdateTime #-}
{-# DEPRECATED lastUpdateTime "Use generic-lens or generic-optics with 'lastUpdateTime' instead"  #-}

-- | The source account ID or an organization.
--
-- /Note:/ Consider using 'sourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
assSourceId :: Lens.Lens' AggregatedSourceStatus (Core.Maybe Core.Text)
assSourceId = Lens.field @"sourceId"
{-# INLINEABLE assSourceId #-}
{-# DEPRECATED sourceId "Use generic-lens or generic-optics with 'sourceId' instead"  #-}

-- | The source account or an organization.
--
-- /Note:/ Consider using 'sourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
assSourceType :: Lens.Lens' AggregatedSourceStatus (Core.Maybe Types.AggregatedSourceType)
assSourceType = Lens.field @"sourceType"
{-# INLINEABLE assSourceType #-}
{-# DEPRECATED sourceType "Use generic-lens or generic-optics with 'sourceType' instead"  #-}

instance Core.FromJSON AggregatedSourceStatus where
        parseJSON
          = Core.withObject "AggregatedSourceStatus" Core.$
              \ x ->
                AggregatedSourceStatus' Core.<$>
                  (x Core..:? "AwsRegion") Core.<*> x Core..:? "LastErrorCode"
                    Core.<*> x Core..:? "LastErrorMessage"
                    Core.<*> x Core..:? "LastUpdateStatus"
                    Core.<*> x Core..:? "LastUpdateTime"
                    Core.<*> x Core..:? "SourceId"
                    Core.<*> x Core..:? "SourceType"
