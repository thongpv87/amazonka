{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.Condition
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GuardDuty.Types.Condition
  ( Condition (..)
  -- * Smart constructor
  , mkCondition
  -- * Lenses
  , cEq
  , cEquals
  , cGreaterThan
  , cGreaterThanOrEqual
  , cGt
  , cGte
  , cLessThan
  , cLessThanOrEqual
  , cLt
  , cLte
  , cNeq
  , cNotEquals
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Contains information about the condition.
--
-- /See:/ 'mkCondition' smart constructor.
data Condition = Condition'
  { eq :: Core.Maybe [Core.Text]
    -- ^ Represents the /equal/ condition to be applied to a single field when querying for findings.
  , equals :: Core.Maybe [Core.Text]
    -- ^ Represents an /equal/ ____ condition to be applied to a single field when querying for findings.
  , greaterThan :: Core.Maybe Core.Integer
    -- ^ Represents a /greater than/ condition to be applied to a single field when querying for findings.
  , greaterThanOrEqual :: Core.Maybe Core.Integer
    -- ^ Represents a /greater than or equal/ condition to be applied to a single field when querying for findings.
  , gt :: Core.Maybe Core.Int
    -- ^ Represents a /greater than/ condition to be applied to a single field when querying for findings.
  , gte :: Core.Maybe Core.Int
    -- ^ Represents a /greater than or equal/ condition to be applied to a single field when querying for findings.
  , lessThan :: Core.Maybe Core.Integer
    -- ^ Represents a /less than/ condition to be applied to a single field when querying for findings.
  , lessThanOrEqual :: Core.Maybe Core.Integer
    -- ^ Represents a /less than or equal/ condition to be applied to a single field when querying for findings.
  , lt :: Core.Maybe Core.Int
    -- ^ Represents a /less than/ condition to be applied to a single field when querying for findings.
  , lte :: Core.Maybe Core.Int
    -- ^ Represents a /less than or equal/ condition to be applied to a single field when querying for findings.
  , neq :: Core.Maybe [Core.Text]
    -- ^ Represents the /not equal/ condition to be applied to a single field when querying for findings.
  , notEquals :: Core.Maybe [Core.Text]
    -- ^ Represents a /not equal/ ____ condition to be applied to a single field when querying for findings.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Condition' value with any optional fields omitted.
mkCondition
    :: Condition
mkCondition
  = Condition'{eq = Core.Nothing, equals = Core.Nothing,
               greaterThan = Core.Nothing, greaterThanOrEqual = Core.Nothing,
               gt = Core.Nothing, gte = Core.Nothing, lessThan = Core.Nothing,
               lessThanOrEqual = Core.Nothing, lt = Core.Nothing,
               lte = Core.Nothing, neq = Core.Nothing, notEquals = Core.Nothing}

-- | Represents the /equal/ condition to be applied to a single field when querying for findings.
--
-- /Note:/ Consider using 'eq' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cEq :: Lens.Lens' Condition (Core.Maybe [Core.Text])
cEq = Lens.field @"eq"
{-# INLINEABLE cEq #-}
{-# DEPRECATED eq "Use generic-lens or generic-optics with 'eq' instead"  #-}

-- | Represents an /equal/ ____ condition to be applied to a single field when querying for findings.
--
-- /Note:/ Consider using 'equals' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cEquals :: Lens.Lens' Condition (Core.Maybe [Core.Text])
cEquals = Lens.field @"equals"
{-# INLINEABLE cEquals #-}
{-# DEPRECATED equals "Use generic-lens or generic-optics with 'equals' instead"  #-}

-- | Represents a /greater than/ condition to be applied to a single field when querying for findings.
--
-- /Note:/ Consider using 'greaterThan' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cGreaterThan :: Lens.Lens' Condition (Core.Maybe Core.Integer)
cGreaterThan = Lens.field @"greaterThan"
{-# INLINEABLE cGreaterThan #-}
{-# DEPRECATED greaterThan "Use generic-lens or generic-optics with 'greaterThan' instead"  #-}

-- | Represents a /greater than or equal/ condition to be applied to a single field when querying for findings.
--
-- /Note:/ Consider using 'greaterThanOrEqual' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cGreaterThanOrEqual :: Lens.Lens' Condition (Core.Maybe Core.Integer)
cGreaterThanOrEqual = Lens.field @"greaterThanOrEqual"
{-# INLINEABLE cGreaterThanOrEqual #-}
{-# DEPRECATED greaterThanOrEqual "Use generic-lens or generic-optics with 'greaterThanOrEqual' instead"  #-}

-- | Represents a /greater than/ condition to be applied to a single field when querying for findings.
--
-- /Note:/ Consider using 'gt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cGt :: Lens.Lens' Condition (Core.Maybe Core.Int)
cGt = Lens.field @"gt"
{-# INLINEABLE cGt #-}
{-# DEPRECATED gt "Use generic-lens or generic-optics with 'gt' instead"  #-}

-- | Represents a /greater than or equal/ condition to be applied to a single field when querying for findings.
--
-- /Note:/ Consider using 'gte' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cGte :: Lens.Lens' Condition (Core.Maybe Core.Int)
cGte = Lens.field @"gte"
{-# INLINEABLE cGte #-}
{-# DEPRECATED gte "Use generic-lens or generic-optics with 'gte' instead"  #-}

-- | Represents a /less than/ condition to be applied to a single field when querying for findings.
--
-- /Note:/ Consider using 'lessThan' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cLessThan :: Lens.Lens' Condition (Core.Maybe Core.Integer)
cLessThan = Lens.field @"lessThan"
{-# INLINEABLE cLessThan #-}
{-# DEPRECATED lessThan "Use generic-lens or generic-optics with 'lessThan' instead"  #-}

-- | Represents a /less than or equal/ condition to be applied to a single field when querying for findings.
--
-- /Note:/ Consider using 'lessThanOrEqual' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cLessThanOrEqual :: Lens.Lens' Condition (Core.Maybe Core.Integer)
cLessThanOrEqual = Lens.field @"lessThanOrEqual"
{-# INLINEABLE cLessThanOrEqual #-}
{-# DEPRECATED lessThanOrEqual "Use generic-lens or generic-optics with 'lessThanOrEqual' instead"  #-}

-- | Represents a /less than/ condition to be applied to a single field when querying for findings.
--
-- /Note:/ Consider using 'lt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cLt :: Lens.Lens' Condition (Core.Maybe Core.Int)
cLt = Lens.field @"lt"
{-# INLINEABLE cLt #-}
{-# DEPRECATED lt "Use generic-lens or generic-optics with 'lt' instead"  #-}

-- | Represents a /less than or equal/ condition to be applied to a single field when querying for findings.
--
-- /Note:/ Consider using 'lte' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cLte :: Lens.Lens' Condition (Core.Maybe Core.Int)
cLte = Lens.field @"lte"
{-# INLINEABLE cLte #-}
{-# DEPRECATED lte "Use generic-lens or generic-optics with 'lte' instead"  #-}

-- | Represents the /not equal/ condition to be applied to a single field when querying for findings.
--
-- /Note:/ Consider using 'neq' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cNeq :: Lens.Lens' Condition (Core.Maybe [Core.Text])
cNeq = Lens.field @"neq"
{-# INLINEABLE cNeq #-}
{-# DEPRECATED neq "Use generic-lens or generic-optics with 'neq' instead"  #-}

-- | Represents a /not equal/ ____ condition to be applied to a single field when querying for findings.
--
-- /Note:/ Consider using 'notEquals' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cNotEquals :: Lens.Lens' Condition (Core.Maybe [Core.Text])
cNotEquals = Lens.field @"notEquals"
{-# INLINEABLE cNotEquals #-}
{-# DEPRECATED notEquals "Use generic-lens or generic-optics with 'notEquals' instead"  #-}

instance Core.FromJSON Condition where
        toJSON Condition{..}
          = Core.object
              (Core.catMaybes
                 [("eq" Core..=) Core.<$> eq, ("equals" Core..=) Core.<$> equals,
                  ("greaterThan" Core..=) Core.<$> greaterThan,
                  ("greaterThanOrEqual" Core..=) Core.<$> greaterThanOrEqual,
                  ("gt" Core..=) Core.<$> gt, ("gte" Core..=) Core.<$> gte,
                  ("lessThan" Core..=) Core.<$> lessThan,
                  ("lessThanOrEqual" Core..=) Core.<$> lessThanOrEqual,
                  ("lt" Core..=) Core.<$> lt, ("lte" Core..=) Core.<$> lte,
                  ("neq" Core..=) Core.<$> neq,
                  ("notEquals" Core..=) Core.<$> notEquals])

instance Core.FromJSON Condition where
        parseJSON
          = Core.withObject "Condition" Core.$
              \ x ->
                Condition' Core.<$>
                  (x Core..:? "eq") Core.<*> x Core..:? "equals" Core.<*>
                    x Core..:? "greaterThan"
                    Core.<*> x Core..:? "greaterThanOrEqual"
                    Core.<*> x Core..:? "gt"
                    Core.<*> x Core..:? "gte"
                    Core.<*> x Core..:? "lessThan"
                    Core.<*> x Core..:? "lessThanOrEqual"
                    Core.<*> x Core..:? "lt"
                    Core.<*> x Core..:? "lte"
                    Core.<*> x Core..:? "neq"
                    Core.<*> x Core..:? "notEquals"
