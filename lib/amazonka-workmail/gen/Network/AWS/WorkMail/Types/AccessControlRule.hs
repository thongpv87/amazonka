{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.Types.AccessControlRule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WorkMail.Types.AccessControlRule
  ( AccessControlRule (..)
  -- * Smart constructor
  , mkAccessControlRule
  -- * Lenses
  , acrActions
  , acrDateCreated
  , acrDateModified
  , acrDescription
  , acrEffect
  , acrIpRanges
  , acrName
  , acrNotActions
  , acrNotIpRanges
  , acrNotUserIds
  , acrUserIds
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.WorkMail.Types.AccessControlRuleAction as Types
import qualified Network.AWS.WorkMail.Types.AccessControlRuleDescription as Types
import qualified Network.AWS.WorkMail.Types.AccessControlRuleEffect as Types
import qualified Network.AWS.WorkMail.Types.AccessControlRuleName as Types
import qualified Network.AWS.WorkMail.Types.IpRange as Types
import qualified Network.AWS.WorkMail.Types.WorkMailIdentifier as Types

-- | A rule that controls access to an Amazon WorkMail organization.
--
-- /See:/ 'mkAccessControlRule' smart constructor.
data AccessControlRule = AccessControlRule'
  { actions :: Core.Maybe [Types.AccessControlRuleAction]
    -- ^ Access protocol actions to include in the rule. Valid values include @ActiveSync@ , @AutoDiscover@ , @EWS@ , @IMAP@ , @SMTP@ , @WindowsOutlook@ , and @WebMail@ .
  , dateCreated :: Core.Maybe Core.NominalDiffTime
    -- ^ The date that the rule was created.
  , dateModified :: Core.Maybe Core.NominalDiffTime
    -- ^ The date that the rule was modified.
  , description :: Core.Maybe Types.AccessControlRuleDescription
    -- ^ The rule description.
  , effect :: Core.Maybe Types.AccessControlRuleEffect
    -- ^ The rule effect.
  , ipRanges :: Core.Maybe [Types.IpRange]
    -- ^ IPv4 CIDR ranges to include in the rule.
  , name :: Core.Maybe Types.AccessControlRuleName
    -- ^ The rule name.
  , notActions :: Core.Maybe [Types.AccessControlRuleAction]
    -- ^ Access protocol actions to exclude from the rule. Valid values include @ActiveSync@ , @AutoDiscover@ , @EWS@ , @IMAP@ , @SMTP@ , @WindowsOutlook@ , and @WebMail@ .
  , notIpRanges :: Core.Maybe [Types.IpRange]
    -- ^ IPv4 CIDR ranges to exclude from the rule.
  , notUserIds :: Core.Maybe [Types.WorkMailIdentifier]
    -- ^ User IDs to exclude from the rule.
  , userIds :: Core.Maybe [Types.WorkMailIdentifier]
    -- ^ User IDs to include in the rule.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'AccessControlRule' value with any optional fields omitted.
mkAccessControlRule
    :: AccessControlRule
mkAccessControlRule
  = AccessControlRule'{actions = Core.Nothing,
                       dateCreated = Core.Nothing, dateModified = Core.Nothing,
                       description = Core.Nothing, effect = Core.Nothing,
                       ipRanges = Core.Nothing, name = Core.Nothing,
                       notActions = Core.Nothing, notIpRanges = Core.Nothing,
                       notUserIds = Core.Nothing, userIds = Core.Nothing}

-- | Access protocol actions to include in the rule. Valid values include @ActiveSync@ , @AutoDiscover@ , @EWS@ , @IMAP@ , @SMTP@ , @WindowsOutlook@ , and @WebMail@ .
--
-- /Note:/ Consider using 'actions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acrActions :: Lens.Lens' AccessControlRule (Core.Maybe [Types.AccessControlRuleAction])
acrActions = Lens.field @"actions"
{-# INLINEABLE acrActions #-}
{-# DEPRECATED actions "Use generic-lens or generic-optics with 'actions' instead"  #-}

-- | The date that the rule was created.
--
-- /Note:/ Consider using 'dateCreated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acrDateCreated :: Lens.Lens' AccessControlRule (Core.Maybe Core.NominalDiffTime)
acrDateCreated = Lens.field @"dateCreated"
{-# INLINEABLE acrDateCreated #-}
{-# DEPRECATED dateCreated "Use generic-lens or generic-optics with 'dateCreated' instead"  #-}

-- | The date that the rule was modified.
--
-- /Note:/ Consider using 'dateModified' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acrDateModified :: Lens.Lens' AccessControlRule (Core.Maybe Core.NominalDiffTime)
acrDateModified = Lens.field @"dateModified"
{-# INLINEABLE acrDateModified #-}
{-# DEPRECATED dateModified "Use generic-lens or generic-optics with 'dateModified' instead"  #-}

-- | The rule description.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acrDescription :: Lens.Lens' AccessControlRule (Core.Maybe Types.AccessControlRuleDescription)
acrDescription = Lens.field @"description"
{-# INLINEABLE acrDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The rule effect.
--
-- /Note:/ Consider using 'effect' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acrEffect :: Lens.Lens' AccessControlRule (Core.Maybe Types.AccessControlRuleEffect)
acrEffect = Lens.field @"effect"
{-# INLINEABLE acrEffect #-}
{-# DEPRECATED effect "Use generic-lens or generic-optics with 'effect' instead"  #-}

-- | IPv4 CIDR ranges to include in the rule.
--
-- /Note:/ Consider using 'ipRanges' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acrIpRanges :: Lens.Lens' AccessControlRule (Core.Maybe [Types.IpRange])
acrIpRanges = Lens.field @"ipRanges"
{-# INLINEABLE acrIpRanges #-}
{-# DEPRECATED ipRanges "Use generic-lens or generic-optics with 'ipRanges' instead"  #-}

-- | The rule name.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acrName :: Lens.Lens' AccessControlRule (Core.Maybe Types.AccessControlRuleName)
acrName = Lens.field @"name"
{-# INLINEABLE acrName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | Access protocol actions to exclude from the rule. Valid values include @ActiveSync@ , @AutoDiscover@ , @EWS@ , @IMAP@ , @SMTP@ , @WindowsOutlook@ , and @WebMail@ .
--
-- /Note:/ Consider using 'notActions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acrNotActions :: Lens.Lens' AccessControlRule (Core.Maybe [Types.AccessControlRuleAction])
acrNotActions = Lens.field @"notActions"
{-# INLINEABLE acrNotActions #-}
{-# DEPRECATED notActions "Use generic-lens or generic-optics with 'notActions' instead"  #-}

-- | IPv4 CIDR ranges to exclude from the rule.
--
-- /Note:/ Consider using 'notIpRanges' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acrNotIpRanges :: Lens.Lens' AccessControlRule (Core.Maybe [Types.IpRange])
acrNotIpRanges = Lens.field @"notIpRanges"
{-# INLINEABLE acrNotIpRanges #-}
{-# DEPRECATED notIpRanges "Use generic-lens or generic-optics with 'notIpRanges' instead"  #-}

-- | User IDs to exclude from the rule.
--
-- /Note:/ Consider using 'notUserIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acrNotUserIds :: Lens.Lens' AccessControlRule (Core.Maybe [Types.WorkMailIdentifier])
acrNotUserIds = Lens.field @"notUserIds"
{-# INLINEABLE acrNotUserIds #-}
{-# DEPRECATED notUserIds "Use generic-lens or generic-optics with 'notUserIds' instead"  #-}

-- | User IDs to include in the rule.
--
-- /Note:/ Consider using 'userIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acrUserIds :: Lens.Lens' AccessControlRule (Core.Maybe [Types.WorkMailIdentifier])
acrUserIds = Lens.field @"userIds"
{-# INLINEABLE acrUserIds #-}
{-# DEPRECATED userIds "Use generic-lens or generic-optics with 'userIds' instead"  #-}

instance Core.FromJSON AccessControlRule where
        parseJSON
          = Core.withObject "AccessControlRule" Core.$
              \ x ->
                AccessControlRule' Core.<$>
                  (x Core..:? "Actions") Core.<*> x Core..:? "DateCreated" Core.<*>
                    x Core..:? "DateModified"
                    Core.<*> x Core..:? "Description"
                    Core.<*> x Core..:? "Effect"
                    Core.<*> x Core..:? "IpRanges"
                    Core.<*> x Core..:? "Name"
                    Core.<*> x Core..:? "NotActions"
                    Core.<*> x Core..:? "NotIpRanges"
                    Core.<*> x Core..:? "NotUserIds"
                    Core.<*> x Core..:? "UserIds"
