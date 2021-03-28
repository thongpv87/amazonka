{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingS3UploadMode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.ProcessingS3UploadMode
  ( ProcessingS3UploadMode
    ( ProcessingS3UploadMode'
    , ProcessingS3UploadModeContinuous
    , ProcessingS3UploadModeEndOfJob
    , fromProcessingS3UploadMode
    )
  ) where

import qualified Network.AWS.Prelude as Core

newtype ProcessingS3UploadMode = ProcessingS3UploadMode'{fromProcessingS3UploadMode
                                                         :: Core.Text}
                                   deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show,
                                                   Core.Generic)
                                   deriving newtype (Core.IsString, Core.Hashable, Core.NFData,
                                                     Core.ToJSONKey, Core.FromJSONKey, Core.ToJSON,
                                                     Core.FromJSON, Core.ToXML, Core.FromXML,
                                                     Core.ToText, Core.FromText, Core.ToByteString,
                                                     Core.ToQuery, Core.ToHeader)

pattern ProcessingS3UploadModeContinuous :: ProcessingS3UploadMode
pattern ProcessingS3UploadModeContinuous = ProcessingS3UploadMode' "Continuous"

pattern ProcessingS3UploadModeEndOfJob :: ProcessingS3UploadMode
pattern ProcessingS3UploadModeEndOfJob = ProcessingS3UploadMode' "EndOfJob"

{-# COMPLETE 
  ProcessingS3UploadModeContinuous,

  ProcessingS3UploadModeEndOfJob,
  ProcessingS3UploadMode'
  #-}
