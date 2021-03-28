{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.RegistryListItem
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.RegistryListItem
  ( RegistryListItem (..)
  -- * Smart constructor
  , mkRegistryListItem
  -- * Lenses
  , rliCreatedTime
  , rliDescription
  , rliRegistryArn
  , rliRegistryName
  , rliStatus
  , rliUpdatedTime
  ) where

import qualified Network.AWS.Glue.Types.CreatedTime as Types
import qualified Network.AWS.Glue.Types.Description as Types
import qualified Network.AWS.Glue.Types.GlueResourceArn as Types
import qualified Network.AWS.Glue.Types.RegistryName as Types
import qualified Network.AWS.Glue.Types.RegistryStatus as Types
import qualified Network.AWS.Glue.Types.UpdatedTime as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A structure containing the details for a registry.
--
-- /See:/ 'mkRegistryListItem' smart constructor.
data RegistryListItem = RegistryListItem'
  { createdTime :: Core.Maybe Types.CreatedTime
    -- ^ The data the registry was created.
  , description :: Core.Maybe Types.Description
    -- ^ A description of the registry.
  , registryArn :: Core.Maybe Types.GlueResourceArn
    -- ^ The Amazon Resource Name (ARN) of the registry.
  , registryName :: Core.Maybe Types.RegistryName
    -- ^ The name of the registry.
  , status :: Core.Maybe Types.RegistryStatus
    -- ^ The status of the registry.
  , updatedTime :: Core.Maybe Types.UpdatedTime
    -- ^ The date the registry was updated.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RegistryListItem' value with any optional fields omitted.
mkRegistryListItem
    :: RegistryListItem
mkRegistryListItem
  = RegistryListItem'{createdTime = Core.Nothing,
                      description = Core.Nothing, registryArn = Core.Nothing,
                      registryName = Core.Nothing, status = Core.Nothing,
                      updatedTime = Core.Nothing}

-- | The data the registry was created.
--
-- /Note:/ Consider using 'createdTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rliCreatedTime :: Lens.Lens' RegistryListItem (Core.Maybe Types.CreatedTime)
rliCreatedTime = Lens.field @"createdTime"
{-# INLINEABLE rliCreatedTime #-}
{-# DEPRECATED createdTime "Use generic-lens or generic-optics with 'createdTime' instead"  #-}

-- | A description of the registry.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rliDescription :: Lens.Lens' RegistryListItem (Core.Maybe Types.Description)
rliDescription = Lens.field @"description"
{-# INLINEABLE rliDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The Amazon Resource Name (ARN) of the registry.
--
-- /Note:/ Consider using 'registryArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rliRegistryArn :: Lens.Lens' RegistryListItem (Core.Maybe Types.GlueResourceArn)
rliRegistryArn = Lens.field @"registryArn"
{-# INLINEABLE rliRegistryArn #-}
{-# DEPRECATED registryArn "Use generic-lens or generic-optics with 'registryArn' instead"  #-}

-- | The name of the registry.
--
-- /Note:/ Consider using 'registryName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rliRegistryName :: Lens.Lens' RegistryListItem (Core.Maybe Types.RegistryName)
rliRegistryName = Lens.field @"registryName"
{-# INLINEABLE rliRegistryName #-}
{-# DEPRECATED registryName "Use generic-lens or generic-optics with 'registryName' instead"  #-}

-- | The status of the registry.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rliStatus :: Lens.Lens' RegistryListItem (Core.Maybe Types.RegistryStatus)
rliStatus = Lens.field @"status"
{-# INLINEABLE rliStatus #-}
{-# DEPRECATED status "Use generic-lens or generic-optics with 'status' instead"  #-}

-- | The date the registry was updated.
--
-- /Note:/ Consider using 'updatedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rliUpdatedTime :: Lens.Lens' RegistryListItem (Core.Maybe Types.UpdatedTime)
rliUpdatedTime = Lens.field @"updatedTime"
{-# INLINEABLE rliUpdatedTime #-}
{-# DEPRECATED updatedTime "Use generic-lens or generic-optics with 'updatedTime' instead"  #-}

instance Core.FromJSON RegistryListItem where
        parseJSON
          = Core.withObject "RegistryListItem" Core.$
              \ x ->
                RegistryListItem' Core.<$>
                  (x Core..:? "CreatedTime") Core.<*> x Core..:? "Description"
                    Core.<*> x Core..:? "RegistryArn"
                    Core.<*> x Core..:? "RegistryName"
                    Core.<*> x Core..:? "Status"
                    Core.<*> x Core..:? "UpdatedTime"
