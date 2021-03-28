{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.MountPoint
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.MountPoint
  ( MountPoint (..)
  -- * Smart constructor
  , mkMountPoint
  -- * Lenses
  , mpContainerPath
  , mpReadOnly
  , mpSourceVolume
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Details on a volume mount point that is used in a container definition.
--
-- /See:/ 'mkMountPoint' smart constructor.
data MountPoint = MountPoint'
  { containerPath :: Core.Maybe Core.Text
    -- ^ The path on the container to mount the host volume at.
  , readOnly :: Core.Maybe Core.Bool
    -- ^ If this value is @true@ , the container has read-only access to the volume. If this value is @false@ , then the container can write to the volume. The default value is @false@ .
  , sourceVolume :: Core.Maybe Core.Text
    -- ^ The name of the volume to mount. Must be a volume name referenced in the @name@ parameter of task definition @volume@ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'MountPoint' value with any optional fields omitted.
mkMountPoint
    :: MountPoint
mkMountPoint
  = MountPoint'{containerPath = Core.Nothing,
                readOnly = Core.Nothing, sourceVolume = Core.Nothing}

-- | The path on the container to mount the host volume at.
--
-- /Note:/ Consider using 'containerPath' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mpContainerPath :: Lens.Lens' MountPoint (Core.Maybe Core.Text)
mpContainerPath = Lens.field @"containerPath"
{-# INLINEABLE mpContainerPath #-}
{-# DEPRECATED containerPath "Use generic-lens or generic-optics with 'containerPath' instead"  #-}

-- | If this value is @true@ , the container has read-only access to the volume. If this value is @false@ , then the container can write to the volume. The default value is @false@ .
--
-- /Note:/ Consider using 'readOnly' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mpReadOnly :: Lens.Lens' MountPoint (Core.Maybe Core.Bool)
mpReadOnly = Lens.field @"readOnly"
{-# INLINEABLE mpReadOnly #-}
{-# DEPRECATED readOnly "Use generic-lens or generic-optics with 'readOnly' instead"  #-}

-- | The name of the volume to mount. Must be a volume name referenced in the @name@ parameter of task definition @volume@ .
--
-- /Note:/ Consider using 'sourceVolume' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mpSourceVolume :: Lens.Lens' MountPoint (Core.Maybe Core.Text)
mpSourceVolume = Lens.field @"sourceVolume"
{-# INLINEABLE mpSourceVolume #-}
{-# DEPRECATED sourceVolume "Use generic-lens or generic-optics with 'sourceVolume' instead"  #-}

instance Core.FromJSON MountPoint where
        toJSON MountPoint{..}
          = Core.object
              (Core.catMaybes
                 [("containerPath" Core..=) Core.<$> containerPath,
                  ("readOnly" Core..=) Core.<$> readOnly,
                  ("sourceVolume" Core..=) Core.<$> sourceVolume])

instance Core.FromJSON MountPoint where
        parseJSON
          = Core.withObject "MountPoint" Core.$
              \ x ->
                MountPoint' Core.<$>
                  (x Core..:? "containerPath") Core.<*> x Core..:? "readOnly"
                    Core.<*> x Core..:? "sourceVolume"
