{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ErrorDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ErrorDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object containing error details.
--
--
--
-- /See:/ 'errorDetails' smart constructor.
data ErrorDetails = ErrorDetails'
  { _eErrorMessage ::
      !(Maybe Text),
    _eErrorCode :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ErrorDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eErrorMessage' - The error message for an error.
--
-- * 'eErrorCode' - The error code for an error.
errorDetails ::
  ErrorDetails
errorDetails =
  ErrorDetails'
    { _eErrorMessage = Nothing,
      _eErrorCode = Nothing
    }

-- | The error message for an error.
eErrorMessage :: Lens' ErrorDetails (Maybe Text)
eErrorMessage = lens _eErrorMessage (\s a -> s {_eErrorMessage = a})

-- | The error code for an error.
eErrorCode :: Lens' ErrorDetails (Maybe Text)
eErrorCode = lens _eErrorCode (\s a -> s {_eErrorCode = a})

instance FromJSON ErrorDetails where
  parseJSON =
    withObject
      "ErrorDetails"
      ( \x ->
          ErrorDetails'
            <$> (x .:? "ErrorMessage") <*> (x .:? "ErrorCode")
      )

instance Hashable ErrorDetails

instance NFData ErrorDetails
