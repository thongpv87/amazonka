{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.PlatformDescription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElasticBeanstalk.Types.PlatformDescription
  ( PlatformDescription (..)
  -- * Smart constructor
  , mkPlatformDescription
  -- * Lenses
  , pdCustomAmiList
  , pdDateCreated
  , pdDateUpdated
  , pdDescription
  , pdFrameworks
  , pdMaintainer
  , pdOperatingSystemName
  , pdOperatingSystemVersion
  , pdPlatformArn
  , pdPlatformBranchLifecycleState
  , pdPlatformBranchName
  , pdPlatformCategory
  , pdPlatformLifecycleState
  , pdPlatformName
  , pdPlatformOwner
  , pdPlatformStatus
  , pdPlatformVersion
  , pdProgrammingLanguages
  , pdSolutionStackName
  , pdSupportedAddonList
  , pdSupportedTierList
  ) where

import qualified Network.AWS.ElasticBeanstalk.Types.BranchName as Types
import qualified Network.AWS.ElasticBeanstalk.Types.CustomAmi as Types
import qualified Network.AWS.ElasticBeanstalk.Types.Description as Types
import qualified Network.AWS.ElasticBeanstalk.Types.Maintainer as Types
import qualified Network.AWS.ElasticBeanstalk.Types.OperatingSystemName as Types
import qualified Network.AWS.ElasticBeanstalk.Types.OperatingSystemVersion as Types
import qualified Network.AWS.ElasticBeanstalk.Types.PlatformArn as Types
import qualified Network.AWS.ElasticBeanstalk.Types.PlatformBranchLifecycleState as Types
import qualified Network.AWS.ElasticBeanstalk.Types.PlatformCategory as Types
import qualified Network.AWS.ElasticBeanstalk.Types.PlatformFramework as Types
import qualified Network.AWS.ElasticBeanstalk.Types.PlatformLifecycleState as Types
import qualified Network.AWS.ElasticBeanstalk.Types.PlatformName as Types
import qualified Network.AWS.ElasticBeanstalk.Types.PlatformOwner as Types
import qualified Network.AWS.ElasticBeanstalk.Types.PlatformProgrammingLanguage as Types
import qualified Network.AWS.ElasticBeanstalk.Types.PlatformStatus as Types
import qualified Network.AWS.ElasticBeanstalk.Types.PlatformVersion as Types
import qualified Network.AWS.ElasticBeanstalk.Types.SolutionStackName as Types
import qualified Network.AWS.ElasticBeanstalk.Types.SupportedAddon as Types
import qualified Network.AWS.ElasticBeanstalk.Types.SupportedTier as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Detailed information about a platform version.
--
-- /See:/ 'mkPlatformDescription' smart constructor.
data PlatformDescription = PlatformDescription'
  { customAmiList :: Core.Maybe [Types.CustomAmi]
    -- ^ The custom AMIs supported by the platform version.
  , dateCreated :: Core.Maybe Core.UTCTime
    -- ^ The date when the platform version was created.
  , dateUpdated :: Core.Maybe Core.UTCTime
    -- ^ The date when the platform version was last updated.
  , description :: Core.Maybe Types.Description
    -- ^ The description of the platform version.
  , frameworks :: Core.Maybe [Types.PlatformFramework]
    -- ^ The frameworks supported by the platform version.
  , maintainer :: Core.Maybe Types.Maintainer
    -- ^ Information about the maintainer of the platform version.
  , operatingSystemName :: Core.Maybe Types.OperatingSystemName
    -- ^ The operating system used by the platform version.
  , operatingSystemVersion :: Core.Maybe Types.OperatingSystemVersion
    -- ^ The version of the operating system used by the platform version.
  , platformArn :: Core.Maybe Types.PlatformArn
    -- ^ The ARN of the platform version.
  , platformBranchLifecycleState :: Core.Maybe Types.PlatformBranchLifecycleState
    -- ^ The state of the platform version's branch in its lifecycle.
--
-- Possible values: @Beta@ | @Supported@ | @Deprecated@ | @Retired@ 
  , platformBranchName :: Core.Maybe Types.BranchName
    -- ^ The platform branch to which the platform version belongs.
  , platformCategory :: Core.Maybe Types.PlatformCategory
    -- ^ The category of the platform version.
  , platformLifecycleState :: Core.Maybe Types.PlatformLifecycleState
    -- ^ The state of the platform version in its lifecycle.
--
-- Possible values: @Recommended@ | @null@ 
-- If a null value is returned, the platform version isn't the recommended one for its branch. Each platform branch has a single recommended platform version, typically the most recent one.
  , platformName :: Core.Maybe Types.PlatformName
    -- ^ The name of the platform version.
  , platformOwner :: Core.Maybe Types.PlatformOwner
    -- ^ The AWS account ID of the person who created the platform version.
  , platformStatus :: Core.Maybe Types.PlatformStatus
    -- ^ The status of the platform version.
  , platformVersion :: Core.Maybe Types.PlatformVersion
    -- ^ The version of the platform version.
  , programmingLanguages :: Core.Maybe [Types.PlatformProgrammingLanguage]
    -- ^ The programming languages supported by the platform version.
  , solutionStackName :: Core.Maybe Types.SolutionStackName
    -- ^ The name of the solution stack used by the platform version.
  , supportedAddonList :: Core.Maybe [Types.SupportedAddon]
    -- ^ The additions supported by the platform version.
  , supportedTierList :: Core.Maybe [Types.SupportedTier]
    -- ^ The tiers supported by the platform version.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'PlatformDescription' value with any optional fields omitted.
mkPlatformDescription
    :: PlatformDescription
mkPlatformDescription
  = PlatformDescription'{customAmiList = Core.Nothing,
                         dateCreated = Core.Nothing, dateUpdated = Core.Nothing,
                         description = Core.Nothing, frameworks = Core.Nothing,
                         maintainer = Core.Nothing, operatingSystemName = Core.Nothing,
                         operatingSystemVersion = Core.Nothing, platformArn = Core.Nothing,
                         platformBranchLifecycleState = Core.Nothing,
                         platformBranchName = Core.Nothing, platformCategory = Core.Nothing,
                         platformLifecycleState = Core.Nothing, platformName = Core.Nothing,
                         platformOwner = Core.Nothing, platformStatus = Core.Nothing,
                         platformVersion = Core.Nothing,
                         programmingLanguages = Core.Nothing,
                         solutionStackName = Core.Nothing,
                         supportedAddonList = Core.Nothing,
                         supportedTierList = Core.Nothing}

-- | The custom AMIs supported by the platform version.
--
-- /Note:/ Consider using 'customAmiList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdCustomAmiList :: Lens.Lens' PlatformDescription (Core.Maybe [Types.CustomAmi])
pdCustomAmiList = Lens.field @"customAmiList"
{-# INLINEABLE pdCustomAmiList #-}
{-# DEPRECATED customAmiList "Use generic-lens or generic-optics with 'customAmiList' instead"  #-}

-- | The date when the platform version was created.
--
-- /Note:/ Consider using 'dateCreated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdDateCreated :: Lens.Lens' PlatformDescription (Core.Maybe Core.UTCTime)
pdDateCreated = Lens.field @"dateCreated"
{-# INLINEABLE pdDateCreated #-}
{-# DEPRECATED dateCreated "Use generic-lens or generic-optics with 'dateCreated' instead"  #-}

-- | The date when the platform version was last updated.
--
-- /Note:/ Consider using 'dateUpdated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdDateUpdated :: Lens.Lens' PlatformDescription (Core.Maybe Core.UTCTime)
pdDateUpdated = Lens.field @"dateUpdated"
{-# INLINEABLE pdDateUpdated #-}
{-# DEPRECATED dateUpdated "Use generic-lens or generic-optics with 'dateUpdated' instead"  #-}

-- | The description of the platform version.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdDescription :: Lens.Lens' PlatformDescription (Core.Maybe Types.Description)
pdDescription = Lens.field @"description"
{-# INLINEABLE pdDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The frameworks supported by the platform version.
--
-- /Note:/ Consider using 'frameworks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdFrameworks :: Lens.Lens' PlatformDescription (Core.Maybe [Types.PlatformFramework])
pdFrameworks = Lens.field @"frameworks"
{-# INLINEABLE pdFrameworks #-}
{-# DEPRECATED frameworks "Use generic-lens or generic-optics with 'frameworks' instead"  #-}

-- | Information about the maintainer of the platform version.
--
-- /Note:/ Consider using 'maintainer' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdMaintainer :: Lens.Lens' PlatformDescription (Core.Maybe Types.Maintainer)
pdMaintainer = Lens.field @"maintainer"
{-# INLINEABLE pdMaintainer #-}
{-# DEPRECATED maintainer "Use generic-lens or generic-optics with 'maintainer' instead"  #-}

-- | The operating system used by the platform version.
--
-- /Note:/ Consider using 'operatingSystemName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdOperatingSystemName :: Lens.Lens' PlatformDescription (Core.Maybe Types.OperatingSystemName)
pdOperatingSystemName = Lens.field @"operatingSystemName"
{-# INLINEABLE pdOperatingSystemName #-}
{-# DEPRECATED operatingSystemName "Use generic-lens or generic-optics with 'operatingSystemName' instead"  #-}

-- | The version of the operating system used by the platform version.
--
-- /Note:/ Consider using 'operatingSystemVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdOperatingSystemVersion :: Lens.Lens' PlatformDescription (Core.Maybe Types.OperatingSystemVersion)
pdOperatingSystemVersion = Lens.field @"operatingSystemVersion"
{-# INLINEABLE pdOperatingSystemVersion #-}
{-# DEPRECATED operatingSystemVersion "Use generic-lens or generic-optics with 'operatingSystemVersion' instead"  #-}

-- | The ARN of the platform version.
--
-- /Note:/ Consider using 'platformArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdPlatformArn :: Lens.Lens' PlatformDescription (Core.Maybe Types.PlatformArn)
pdPlatformArn = Lens.field @"platformArn"
{-# INLINEABLE pdPlatformArn #-}
{-# DEPRECATED platformArn "Use generic-lens or generic-optics with 'platformArn' instead"  #-}

-- | The state of the platform version's branch in its lifecycle.
--
-- Possible values: @Beta@ | @Supported@ | @Deprecated@ | @Retired@ 
--
-- /Note:/ Consider using 'platformBranchLifecycleState' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdPlatformBranchLifecycleState :: Lens.Lens' PlatformDescription (Core.Maybe Types.PlatformBranchLifecycleState)
pdPlatformBranchLifecycleState = Lens.field @"platformBranchLifecycleState"
{-# INLINEABLE pdPlatformBranchLifecycleState #-}
{-# DEPRECATED platformBranchLifecycleState "Use generic-lens or generic-optics with 'platformBranchLifecycleState' instead"  #-}

-- | The platform branch to which the platform version belongs.
--
-- /Note:/ Consider using 'platformBranchName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdPlatformBranchName :: Lens.Lens' PlatformDescription (Core.Maybe Types.BranchName)
pdPlatformBranchName = Lens.field @"platformBranchName"
{-# INLINEABLE pdPlatformBranchName #-}
{-# DEPRECATED platformBranchName "Use generic-lens or generic-optics with 'platformBranchName' instead"  #-}

-- | The category of the platform version.
--
-- /Note:/ Consider using 'platformCategory' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdPlatformCategory :: Lens.Lens' PlatformDescription (Core.Maybe Types.PlatformCategory)
pdPlatformCategory = Lens.field @"platformCategory"
{-# INLINEABLE pdPlatformCategory #-}
{-# DEPRECATED platformCategory "Use generic-lens or generic-optics with 'platformCategory' instead"  #-}

-- | The state of the platform version in its lifecycle.
--
-- Possible values: @Recommended@ | @null@ 
-- If a null value is returned, the platform version isn't the recommended one for its branch. Each platform branch has a single recommended platform version, typically the most recent one.
--
-- /Note:/ Consider using 'platformLifecycleState' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdPlatformLifecycleState :: Lens.Lens' PlatformDescription (Core.Maybe Types.PlatformLifecycleState)
pdPlatformLifecycleState = Lens.field @"platformLifecycleState"
{-# INLINEABLE pdPlatformLifecycleState #-}
{-# DEPRECATED platformLifecycleState "Use generic-lens or generic-optics with 'platformLifecycleState' instead"  #-}

-- | The name of the platform version.
--
-- /Note:/ Consider using 'platformName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdPlatformName :: Lens.Lens' PlatformDescription (Core.Maybe Types.PlatformName)
pdPlatformName = Lens.field @"platformName"
{-# INLINEABLE pdPlatformName #-}
{-# DEPRECATED platformName "Use generic-lens or generic-optics with 'platformName' instead"  #-}

-- | The AWS account ID of the person who created the platform version.
--
-- /Note:/ Consider using 'platformOwner' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdPlatformOwner :: Lens.Lens' PlatformDescription (Core.Maybe Types.PlatformOwner)
pdPlatformOwner = Lens.field @"platformOwner"
{-# INLINEABLE pdPlatformOwner #-}
{-# DEPRECATED platformOwner "Use generic-lens or generic-optics with 'platformOwner' instead"  #-}

-- | The status of the platform version.
--
-- /Note:/ Consider using 'platformStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdPlatformStatus :: Lens.Lens' PlatformDescription (Core.Maybe Types.PlatformStatus)
pdPlatformStatus = Lens.field @"platformStatus"
{-# INLINEABLE pdPlatformStatus #-}
{-# DEPRECATED platformStatus "Use generic-lens or generic-optics with 'platformStatus' instead"  #-}

-- | The version of the platform version.
--
-- /Note:/ Consider using 'platformVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdPlatformVersion :: Lens.Lens' PlatformDescription (Core.Maybe Types.PlatformVersion)
pdPlatformVersion = Lens.field @"platformVersion"
{-# INLINEABLE pdPlatformVersion #-}
{-# DEPRECATED platformVersion "Use generic-lens or generic-optics with 'platformVersion' instead"  #-}

-- | The programming languages supported by the platform version.
--
-- /Note:/ Consider using 'programmingLanguages' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdProgrammingLanguages :: Lens.Lens' PlatformDescription (Core.Maybe [Types.PlatformProgrammingLanguage])
pdProgrammingLanguages = Lens.field @"programmingLanguages"
{-# INLINEABLE pdProgrammingLanguages #-}
{-# DEPRECATED programmingLanguages "Use generic-lens or generic-optics with 'programmingLanguages' instead"  #-}

-- | The name of the solution stack used by the platform version.
--
-- /Note:/ Consider using 'solutionStackName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdSolutionStackName :: Lens.Lens' PlatformDescription (Core.Maybe Types.SolutionStackName)
pdSolutionStackName = Lens.field @"solutionStackName"
{-# INLINEABLE pdSolutionStackName #-}
{-# DEPRECATED solutionStackName "Use generic-lens or generic-optics with 'solutionStackName' instead"  #-}

-- | The additions supported by the platform version.
--
-- /Note:/ Consider using 'supportedAddonList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdSupportedAddonList :: Lens.Lens' PlatformDescription (Core.Maybe [Types.SupportedAddon])
pdSupportedAddonList = Lens.field @"supportedAddonList"
{-# INLINEABLE pdSupportedAddonList #-}
{-# DEPRECATED supportedAddonList "Use generic-lens or generic-optics with 'supportedAddonList' instead"  #-}

-- | The tiers supported by the platform version.
--
-- /Note:/ Consider using 'supportedTierList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdSupportedTierList :: Lens.Lens' PlatformDescription (Core.Maybe [Types.SupportedTier])
pdSupportedTierList = Lens.field @"supportedTierList"
{-# INLINEABLE pdSupportedTierList #-}
{-# DEPRECATED supportedTierList "Use generic-lens or generic-optics with 'supportedTierList' instead"  #-}

instance Core.FromXML PlatformDescription where
        parseXML x
          = PlatformDescription' Core.<$>
              (x Core..@? "CustomAmiList" Core..<@> Core.parseXMLList "member")
                Core.<*> x Core..@? "DateCreated"
                Core.<*> x Core..@? "DateUpdated"
                Core.<*> x Core..@? "Description"
                Core.<*>
                x Core..@? "Frameworks" Core..<@> Core.parseXMLList "member"
                Core.<*> x Core..@? "Maintainer"
                Core.<*> x Core..@? "OperatingSystemName"
                Core.<*> x Core..@? "OperatingSystemVersion"
                Core.<*> x Core..@? "PlatformArn"
                Core.<*> x Core..@? "PlatformBranchLifecycleState"
                Core.<*> x Core..@? "PlatformBranchName"
                Core.<*> x Core..@? "PlatformCategory"
                Core.<*> x Core..@? "PlatformLifecycleState"
                Core.<*> x Core..@? "PlatformName"
                Core.<*> x Core..@? "PlatformOwner"
                Core.<*> x Core..@? "PlatformStatus"
                Core.<*> x Core..@? "PlatformVersion"
                Core.<*>
                x Core..@? "ProgrammingLanguages" Core..<@>
                  Core.parseXMLList "member"
                Core.<*> x Core..@? "SolutionStackName"
                Core.<*>
                x Core..@? "SupportedAddonList" Core..<@>
                  Core.parseXMLList "member"
                Core.<*>
                x Core..@? "SupportedTierList" Core..<@> Core.parseXMLList "member"
