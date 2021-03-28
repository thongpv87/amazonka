{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.EventTypeCategory
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AWSHealth.Types.EventTypeCategory
  ( EventTypeCategory
    ( EventTypeCategory'
    , EventTypeCategoryIssue
    , EventTypeCategoryAccountNotification
    , EventTypeCategoryScheduledChange
    , EventTypeCategoryInvestigation
    , fromEventTypeCategory
    )
  ) where

import qualified Network.AWS.Prelude as Core

newtype EventTypeCategory = EventTypeCategory'{fromEventTypeCategory
                                               :: Core.Text}
                              deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show,
                                              Core.Generic)
                              deriving newtype (Core.IsString, Core.Hashable, Core.NFData,
                                                Core.ToJSONKey, Core.FromJSONKey, Core.ToJSON,
                                                Core.FromJSON, Core.ToXML, Core.FromXML,
                                                Core.ToText, Core.FromText, Core.ToByteString,
                                                Core.ToQuery, Core.ToHeader)

pattern EventTypeCategoryIssue :: EventTypeCategory
pattern EventTypeCategoryIssue = EventTypeCategory' "issue"

pattern EventTypeCategoryAccountNotification :: EventTypeCategory
pattern EventTypeCategoryAccountNotification = EventTypeCategory' "accountNotification"

pattern EventTypeCategoryScheduledChange :: EventTypeCategory
pattern EventTypeCategoryScheduledChange = EventTypeCategory' "scheduledChange"

pattern EventTypeCategoryInvestigation :: EventTypeCategory
pattern EventTypeCategoryInvestigation = EventTypeCategory' "investigation"

{-# COMPLETE 
  EventTypeCategoryIssue,

  EventTypeCategoryAccountNotification,

  EventTypeCategoryScheduledChange,

  EventTypeCategoryInvestigation,
  EventTypeCategory'
  #-}
