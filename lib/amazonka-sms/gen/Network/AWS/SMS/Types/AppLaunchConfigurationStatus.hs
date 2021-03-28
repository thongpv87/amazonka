{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.AppLaunchConfigurationStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SMS.Types.AppLaunchConfigurationStatus
  ( AppLaunchConfigurationStatus
    ( AppLaunchConfigurationStatus'
    , AppLaunchConfigurationStatusNotConfigured
    , AppLaunchConfigurationStatusConfigured
    , fromAppLaunchConfigurationStatus
    )
  ) where

import qualified Network.AWS.Prelude as Core

newtype AppLaunchConfigurationStatus = AppLaunchConfigurationStatus'{fromAppLaunchConfigurationStatus
                                                                     :: Core.Text}
                                         deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show,
                                                         Core.Generic)
                                         deriving newtype (Core.IsString, Core.Hashable,
                                                           Core.NFData, Core.ToJSONKey,
                                                           Core.FromJSONKey, Core.ToJSON,
                                                           Core.FromJSON, Core.ToXML, Core.FromXML,
                                                           Core.ToText, Core.FromText,
                                                           Core.ToByteString, Core.ToQuery,
                                                           Core.ToHeader)

pattern AppLaunchConfigurationStatusNotConfigured :: AppLaunchConfigurationStatus
pattern AppLaunchConfigurationStatusNotConfigured = AppLaunchConfigurationStatus' "NOT_CONFIGURED"

pattern AppLaunchConfigurationStatusConfigured :: AppLaunchConfigurationStatus
pattern AppLaunchConfigurationStatusConfigured = AppLaunchConfigurationStatus' "CONFIGURED"

{-# COMPLETE 
  AppLaunchConfigurationStatusNotConfigured,

  AppLaunchConfigurationStatusConfigured,
  AppLaunchConfigurationStatus'
  #-}
