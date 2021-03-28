{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.ConfigurationOptionSetting
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElasticBeanstalk.Types.ConfigurationOptionSetting
  ( ConfigurationOptionSetting (..)
  -- * Smart constructor
  , mkConfigurationOptionSetting
  -- * Lenses
  , cosNamespace
  , cosOptionName
  , cosResourceName
  , cosValue
  ) where

import qualified Network.AWS.ElasticBeanstalk.Types.Namespace as Types
import qualified Network.AWS.ElasticBeanstalk.Types.OptionName as Types
import qualified Network.AWS.ElasticBeanstalk.Types.ResourceName as Types
import qualified Network.AWS.ElasticBeanstalk.Types.Value as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A specification identifying an individual configuration option along with its current value. For a list of possible namespaces and option values, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html Option Values> in the /AWS Elastic Beanstalk Developer Guide/ . 
--
-- /See:/ 'mkConfigurationOptionSetting' smart constructor.
data ConfigurationOptionSetting = ConfigurationOptionSetting'
  { namespace :: Core.Maybe Types.Namespace
    -- ^ A unique namespace that identifies the option's associated AWS resource.
  , optionName :: Core.Maybe Types.OptionName
    -- ^ The name of the configuration option.
  , resourceName :: Core.Maybe Types.ResourceName
    -- ^ A unique resource name for the option setting. Use it for a time–based scaling configuration option.
  , value :: Core.Maybe Types.Value
    -- ^ The current value for the configuration option.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ConfigurationOptionSetting' value with any optional fields omitted.
mkConfigurationOptionSetting
    :: ConfigurationOptionSetting
mkConfigurationOptionSetting
  = ConfigurationOptionSetting'{namespace = Core.Nothing,
                                optionName = Core.Nothing, resourceName = Core.Nothing,
                                value = Core.Nothing}

-- | A unique namespace that identifies the option's associated AWS resource.
--
-- /Note:/ Consider using 'namespace' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cosNamespace :: Lens.Lens' ConfigurationOptionSetting (Core.Maybe Types.Namespace)
cosNamespace = Lens.field @"namespace"
{-# INLINEABLE cosNamespace #-}
{-# DEPRECATED namespace "Use generic-lens or generic-optics with 'namespace' instead"  #-}

-- | The name of the configuration option.
--
-- /Note:/ Consider using 'optionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cosOptionName :: Lens.Lens' ConfigurationOptionSetting (Core.Maybe Types.OptionName)
cosOptionName = Lens.field @"optionName"
{-# INLINEABLE cosOptionName #-}
{-# DEPRECATED optionName "Use generic-lens or generic-optics with 'optionName' instead"  #-}

-- | A unique resource name for the option setting. Use it for a time–based scaling configuration option.
--
-- /Note:/ Consider using 'resourceName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cosResourceName :: Lens.Lens' ConfigurationOptionSetting (Core.Maybe Types.ResourceName)
cosResourceName = Lens.field @"resourceName"
{-# INLINEABLE cosResourceName #-}
{-# DEPRECATED resourceName "Use generic-lens or generic-optics with 'resourceName' instead"  #-}

-- | The current value for the configuration option.
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cosValue :: Lens.Lens' ConfigurationOptionSetting (Core.Maybe Types.Value)
cosValue = Lens.field @"value"
{-# INLINEABLE cosValue #-}
{-# DEPRECATED value "Use generic-lens or generic-optics with 'value' instead"  #-}

instance Core.ToQuery ConfigurationOptionSetting where
        toQuery ConfigurationOptionSetting{..}
          = Core.maybe Core.mempty (Core.toQueryPair "Namespace") namespace
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "OptionName") optionName
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "ResourceName")
                resourceName
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "Value") value

instance Core.FromXML ConfigurationOptionSetting where
        parseXML x
          = ConfigurationOptionSetting' Core.<$>
              (x Core..@? "Namespace") Core.<*> x Core..@? "OptionName" Core.<*>
                x Core..@? "ResourceName"
                Core.<*> x Core..@? "Value"
