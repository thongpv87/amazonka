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
-- Module      : Network.AWS.LexModels.Types.ChannelType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.ChannelType
  ( ChannelType
      ( ..,
        ChannelType_Facebook,
        ChannelType_Kik,
        ChannelType_Slack,
        ChannelType_Twilio_Sms
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChannelType = ChannelType'
  { fromChannelType ::
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

pattern ChannelType_Facebook :: ChannelType
pattern ChannelType_Facebook = ChannelType' "Facebook"

pattern ChannelType_Kik :: ChannelType
pattern ChannelType_Kik = ChannelType' "Kik"

pattern ChannelType_Slack :: ChannelType
pattern ChannelType_Slack = ChannelType' "Slack"

pattern ChannelType_Twilio_Sms :: ChannelType
pattern ChannelType_Twilio_Sms = ChannelType' "Twilio-Sms"

{-# COMPLETE
  ChannelType_Facebook,
  ChannelType_Kik,
  ChannelType_Slack,
  ChannelType_Twilio_Sms,
  ChannelType'
  #-}
