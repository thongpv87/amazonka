{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.SchemaChangePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SchemaChangePolicy where

import Network.AWS.Glue.Types.DeleteBehavior
import Network.AWS.Glue.Types.UpdateBehavior
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A policy that specifies update and deletion behaviors for the crawler.
--
--
--
-- /See:/ 'schemaChangePolicy' smart constructor.
data SchemaChangePolicy = SchemaChangePolicy'
  { _scpUpdateBehavior ::
      !(Maybe UpdateBehavior),
    _scpDeleteBehavior ::
      !(Maybe DeleteBehavior)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SchemaChangePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scpUpdateBehavior' - The update behavior when the crawler finds a changed schema.
--
-- * 'scpDeleteBehavior' - The deletion behavior when the crawler finds a deleted object.
schemaChangePolicy ::
  SchemaChangePolicy
schemaChangePolicy =
  SchemaChangePolicy'
    { _scpUpdateBehavior = Nothing,
      _scpDeleteBehavior = Nothing
    }

-- | The update behavior when the crawler finds a changed schema.
scpUpdateBehavior :: Lens' SchemaChangePolicy (Maybe UpdateBehavior)
scpUpdateBehavior = lens _scpUpdateBehavior (\s a -> s {_scpUpdateBehavior = a})

-- | The deletion behavior when the crawler finds a deleted object.
scpDeleteBehavior :: Lens' SchemaChangePolicy (Maybe DeleteBehavior)
scpDeleteBehavior = lens _scpDeleteBehavior (\s a -> s {_scpDeleteBehavior = a})

instance FromJSON SchemaChangePolicy where
  parseJSON =
    withObject
      "SchemaChangePolicy"
      ( \x ->
          SchemaChangePolicy'
            <$> (x .:? "UpdateBehavior")
            <*> (x .:? "DeleteBehavior")
      )

instance Hashable SchemaChangePolicy

instance NFData SchemaChangePolicy

instance ToJSON SchemaChangePolicy where
  toJSON SchemaChangePolicy' {..} =
    object
      ( catMaybes
          [ ("UpdateBehavior" .=) <$> _scpUpdateBehavior,
            ("DeleteBehavior" .=) <$> _scpDeleteBehavior
          ]
      )
