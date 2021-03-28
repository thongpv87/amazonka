{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ActiveViolation
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoT.Types.ActiveViolation
  ( ActiveViolation (..)
  -- * Smart constructor
  , mkActiveViolation
  -- * Lenses
  , avBehavior
  , avLastViolationTime
  , avLastViolationValue
  , avSecurityProfileName
  , avThingName
  , avViolationId
  , avViolationStartTime
  ) where

import qualified Network.AWS.IoT.Types.Behavior as Types
import qualified Network.AWS.IoT.Types.DeviceDefenderThingName as Types
import qualified Network.AWS.IoT.Types.MetricValue as Types
import qualified Network.AWS.IoT.Types.SecurityProfileName as Types
import qualified Network.AWS.IoT.Types.ViolationId as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Information about an active Device Defender security profile behavior violation.
--
-- /See:/ 'mkActiveViolation' smart constructor.
data ActiveViolation = ActiveViolation'
  { behavior :: Core.Maybe Types.Behavior
    -- ^ The behavior which is being violated.
  , lastViolationTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The time the most recent violation occurred.
  , lastViolationValue :: Core.Maybe Types.MetricValue
    -- ^ The value of the metric (the measurement) which caused the most recent violation.
  , securityProfileName :: Core.Maybe Types.SecurityProfileName
    -- ^ The security profile whose behavior is in violation.
  , thingName :: Core.Maybe Types.DeviceDefenderThingName
    -- ^ The name of the thing responsible for the active violation.
  , violationId :: Core.Maybe Types.ViolationId
    -- ^ The ID of the active violation.
  , violationStartTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The time the violation started.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ActiveViolation' value with any optional fields omitted.
mkActiveViolation
    :: ActiveViolation
mkActiveViolation
  = ActiveViolation'{behavior = Core.Nothing,
                     lastViolationTime = Core.Nothing,
                     lastViolationValue = Core.Nothing,
                     securityProfileName = Core.Nothing, thingName = Core.Nothing,
                     violationId = Core.Nothing, violationStartTime = Core.Nothing}

-- | The behavior which is being violated.
--
-- /Note:/ Consider using 'behavior' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avBehavior :: Lens.Lens' ActiveViolation (Core.Maybe Types.Behavior)
avBehavior = Lens.field @"behavior"
{-# INLINEABLE avBehavior #-}
{-# DEPRECATED behavior "Use generic-lens or generic-optics with 'behavior' instead"  #-}

-- | The time the most recent violation occurred.
--
-- /Note:/ Consider using 'lastViolationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avLastViolationTime :: Lens.Lens' ActiveViolation (Core.Maybe Core.NominalDiffTime)
avLastViolationTime = Lens.field @"lastViolationTime"
{-# INLINEABLE avLastViolationTime #-}
{-# DEPRECATED lastViolationTime "Use generic-lens or generic-optics with 'lastViolationTime' instead"  #-}

-- | The value of the metric (the measurement) which caused the most recent violation.
--
-- /Note:/ Consider using 'lastViolationValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avLastViolationValue :: Lens.Lens' ActiveViolation (Core.Maybe Types.MetricValue)
avLastViolationValue = Lens.field @"lastViolationValue"
{-# INLINEABLE avLastViolationValue #-}
{-# DEPRECATED lastViolationValue "Use generic-lens or generic-optics with 'lastViolationValue' instead"  #-}

-- | The security profile whose behavior is in violation.
--
-- /Note:/ Consider using 'securityProfileName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avSecurityProfileName :: Lens.Lens' ActiveViolation (Core.Maybe Types.SecurityProfileName)
avSecurityProfileName = Lens.field @"securityProfileName"
{-# INLINEABLE avSecurityProfileName #-}
{-# DEPRECATED securityProfileName "Use generic-lens or generic-optics with 'securityProfileName' instead"  #-}

-- | The name of the thing responsible for the active violation.
--
-- /Note:/ Consider using 'thingName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avThingName :: Lens.Lens' ActiveViolation (Core.Maybe Types.DeviceDefenderThingName)
avThingName = Lens.field @"thingName"
{-# INLINEABLE avThingName #-}
{-# DEPRECATED thingName "Use generic-lens or generic-optics with 'thingName' instead"  #-}

-- | The ID of the active violation.
--
-- /Note:/ Consider using 'violationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avViolationId :: Lens.Lens' ActiveViolation (Core.Maybe Types.ViolationId)
avViolationId = Lens.field @"violationId"
{-# INLINEABLE avViolationId #-}
{-# DEPRECATED violationId "Use generic-lens or generic-optics with 'violationId' instead"  #-}

-- | The time the violation started.
--
-- /Note:/ Consider using 'violationStartTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avViolationStartTime :: Lens.Lens' ActiveViolation (Core.Maybe Core.NominalDiffTime)
avViolationStartTime = Lens.field @"violationStartTime"
{-# INLINEABLE avViolationStartTime #-}
{-# DEPRECATED violationStartTime "Use generic-lens or generic-optics with 'violationStartTime' instead"  #-}

instance Core.FromJSON ActiveViolation where
        parseJSON
          = Core.withObject "ActiveViolation" Core.$
              \ x ->
                ActiveViolation' Core.<$>
                  (x Core..:? "behavior") Core.<*> x Core..:? "lastViolationTime"
                    Core.<*> x Core..:? "lastViolationValue"
                    Core.<*> x Core..:? "securityProfileName"
                    Core.<*> x Core..:? "thingName"
                    Core.<*> x Core..:? "violationId"
                    Core.<*> x Core..:? "violationStartTime"
