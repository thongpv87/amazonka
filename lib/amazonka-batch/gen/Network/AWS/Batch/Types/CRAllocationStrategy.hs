{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.CRAllocationStrategy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Batch.Types.CRAllocationStrategy
  ( CRAllocationStrategy
    ( CRAllocationStrategy'
    , CRAllocationStrategyBestFit
    , CRAllocationStrategyBestFitProgressive
    , CRAllocationStrategySpotCapacityOptimized
    , fromCRAllocationStrategy
    )
  ) where

import qualified Network.AWS.Prelude as Core

newtype CRAllocationStrategy = CRAllocationStrategy'{fromCRAllocationStrategy
                                                     :: Core.Text}
                                 deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show,
                                                 Core.Generic)
                                 deriving newtype (Core.IsString, Core.Hashable, Core.NFData,
                                                   Core.ToJSONKey, Core.FromJSONKey, Core.ToJSON,
                                                   Core.FromJSON, Core.ToXML, Core.FromXML,
                                                   Core.ToText, Core.FromText, Core.ToByteString,
                                                   Core.ToQuery, Core.ToHeader)

pattern CRAllocationStrategyBestFit :: CRAllocationStrategy
pattern CRAllocationStrategyBestFit = CRAllocationStrategy' "BEST_FIT"

pattern CRAllocationStrategyBestFitProgressive :: CRAllocationStrategy
pattern CRAllocationStrategyBestFitProgressive = CRAllocationStrategy' "BEST_FIT_PROGRESSIVE"

pattern CRAllocationStrategySpotCapacityOptimized :: CRAllocationStrategy
pattern CRAllocationStrategySpotCapacityOptimized = CRAllocationStrategy' "SPOT_CAPACITY_OPTIMIZED"

{-# COMPLETE 
  CRAllocationStrategyBestFit,

  CRAllocationStrategyBestFitProgressive,

  CRAllocationStrategySpotCapacityOptimized,
  CRAllocationStrategy'
  #-}
