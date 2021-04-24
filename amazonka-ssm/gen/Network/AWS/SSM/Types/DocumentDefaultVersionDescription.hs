{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentDefaultVersionDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentDefaultVersionDescription where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A default version of a document.
--
--
--
-- /See:/ 'documentDefaultVersionDescription' smart constructor.
data DocumentDefaultVersionDescription = DocumentDefaultVersionDescription'
  { _ddvdDefaultVersion ::
      !( Maybe
           Text
       ),
    _ddvdName ::
      !( Maybe
           Text
       ),
    _ddvdDefaultVersionName ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DocumentDefaultVersionDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddvdDefaultVersion' - The default version of the document.
--
-- * 'ddvdName' - The name of the document.
--
-- * 'ddvdDefaultVersionName' - The default version of the artifact associated with the document.
documentDefaultVersionDescription ::
  DocumentDefaultVersionDescription
documentDefaultVersionDescription =
  DocumentDefaultVersionDescription'
    { _ddvdDefaultVersion =
        Nothing,
      _ddvdName = Nothing,
      _ddvdDefaultVersionName = Nothing
    }

-- | The default version of the document.
ddvdDefaultVersion :: Lens' DocumentDefaultVersionDescription (Maybe Text)
ddvdDefaultVersion = lens _ddvdDefaultVersion (\s a -> s {_ddvdDefaultVersion = a})

-- | The name of the document.
ddvdName :: Lens' DocumentDefaultVersionDescription (Maybe Text)
ddvdName = lens _ddvdName (\s a -> s {_ddvdName = a})

-- | The default version of the artifact associated with the document.
ddvdDefaultVersionName :: Lens' DocumentDefaultVersionDescription (Maybe Text)
ddvdDefaultVersionName = lens _ddvdDefaultVersionName (\s a -> s {_ddvdDefaultVersionName = a})

instance FromJSON DocumentDefaultVersionDescription where
  parseJSON =
    withObject
      "DocumentDefaultVersionDescription"
      ( \x ->
          DocumentDefaultVersionDescription'
            <$> (x .:? "DefaultVersion")
            <*> (x .:? "Name")
            <*> (x .:? "DefaultVersionName")
      )

instance Hashable DocumentDefaultVersionDescription

instance NFData DocumentDefaultVersionDescription
