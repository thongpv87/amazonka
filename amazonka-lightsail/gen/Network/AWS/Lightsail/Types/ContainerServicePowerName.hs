{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.ContainerServicePowerName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContainerServicePowerName
  ( ContainerServicePowerName
      ( ..,
        ContainerServicePowerName_Large,
        ContainerServicePowerName_Medium,
        ContainerServicePowerName_Micro,
        ContainerServicePowerName_Nano,
        ContainerServicePowerName_Small,
        ContainerServicePowerName_Xlarge
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContainerServicePowerName = ContainerServicePowerName'
  { fromContainerServicePowerName ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern ContainerServicePowerName_Large :: ContainerServicePowerName
pattern ContainerServicePowerName_Large = ContainerServicePowerName' "large"

pattern ContainerServicePowerName_Medium :: ContainerServicePowerName
pattern ContainerServicePowerName_Medium = ContainerServicePowerName' "medium"

pattern ContainerServicePowerName_Micro :: ContainerServicePowerName
pattern ContainerServicePowerName_Micro = ContainerServicePowerName' "micro"

pattern ContainerServicePowerName_Nano :: ContainerServicePowerName
pattern ContainerServicePowerName_Nano = ContainerServicePowerName' "nano"

pattern ContainerServicePowerName_Small :: ContainerServicePowerName
pattern ContainerServicePowerName_Small = ContainerServicePowerName' "small"

pattern ContainerServicePowerName_Xlarge :: ContainerServicePowerName
pattern ContainerServicePowerName_Xlarge = ContainerServicePowerName' "xlarge"

{-# COMPLETE
  ContainerServicePowerName_Large,
  ContainerServicePowerName_Medium,
  ContainerServicePowerName_Micro,
  ContainerServicePowerName_Nano,
  ContainerServicePowerName_Small,
  ContainerServicePowerName_Xlarge,
  ContainerServicePowerName'
  #-}
