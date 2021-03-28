{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.RegexPatternSetSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WAFRegional.Types.RegexPatternSetSummary
  ( RegexPatternSetSummary (..)
  -- * Smart constructor
  , mkRegexPatternSetSummary
  -- * Lenses
  , rpssRegexPatternSetId
  , rpssName
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.WAFRegional.Types.ResourceId as Types
import qualified Network.AWS.WAFRegional.Types.ResourceName as Types

-- | Returned by 'ListRegexPatternSets' . Each @RegexPatternSetSummary@ object includes the @Name@ and @RegexPatternSetId@ for one 'RegexPatternSet' .
--
-- /See:/ 'mkRegexPatternSetSummary' smart constructor.
data RegexPatternSetSummary = RegexPatternSetSummary'
  { regexPatternSetId :: Types.ResourceId
    -- ^ The @RegexPatternSetId@ for a @RegexPatternSet@ . You use @RegexPatternSetId@ to get information about a @RegexPatternSet@ , update a @RegexPatternSet@ , remove a @RegexPatternSet@ from a @RegexMatchSet@ , and delete a @RegexPatternSet@ from AWS WAF.
--
-- @RegexPatternSetId@ is returned by 'CreateRegexPatternSet' and by 'ListRegexPatternSets' .
  , name :: Types.ResourceName
    -- ^ A friendly name or description of the 'RegexPatternSet' . You can't change @Name@ after you create a @RegexPatternSet@ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RegexPatternSetSummary' value with any optional fields omitted.
mkRegexPatternSetSummary
    :: Types.ResourceId -- ^ 'regexPatternSetId'
    -> Types.ResourceName -- ^ 'name'
    -> RegexPatternSetSummary
mkRegexPatternSetSummary regexPatternSetId name
  = RegexPatternSetSummary'{regexPatternSetId, name}

-- | The @RegexPatternSetId@ for a @RegexPatternSet@ . You use @RegexPatternSetId@ to get information about a @RegexPatternSet@ , update a @RegexPatternSet@ , remove a @RegexPatternSet@ from a @RegexMatchSet@ , and delete a @RegexPatternSet@ from AWS WAF.
--
-- @RegexPatternSetId@ is returned by 'CreateRegexPatternSet' and by 'ListRegexPatternSets' .
--
-- /Note:/ Consider using 'regexPatternSetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rpssRegexPatternSetId :: Lens.Lens' RegexPatternSetSummary Types.ResourceId
rpssRegexPatternSetId = Lens.field @"regexPatternSetId"
{-# INLINEABLE rpssRegexPatternSetId #-}
{-# DEPRECATED regexPatternSetId "Use generic-lens or generic-optics with 'regexPatternSetId' instead"  #-}

-- | A friendly name or description of the 'RegexPatternSet' . You can't change @Name@ after you create a @RegexPatternSet@ .
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rpssName :: Lens.Lens' RegexPatternSetSummary Types.ResourceName
rpssName = Lens.field @"name"
{-# INLINEABLE rpssName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

instance Core.FromJSON RegexPatternSetSummary where
        parseJSON
          = Core.withObject "RegexPatternSetSummary" Core.$
              \ x ->
                RegexPatternSetSummary' Core.<$>
                  (x Core..: "RegexPatternSetId") Core.<*> x Core..: "Name"
