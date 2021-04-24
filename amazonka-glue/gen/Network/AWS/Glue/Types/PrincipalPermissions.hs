{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.PrincipalPermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.PrincipalPermissions where

import Network.AWS.Glue.Types.DataLakePrincipal
import Network.AWS.Glue.Types.Permission
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Permissions granted to a principal.
--
--
--
-- /See:/ 'principalPermissions' smart constructor.
data PrincipalPermissions = PrincipalPermissions'
  { _ppPermissions ::
      !(Maybe [Permission]),
    _ppPrincipal ::
      !(Maybe DataLakePrincipal)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PrincipalPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppPermissions' - The permissions that are granted to the principal.
--
-- * 'ppPrincipal' - The principal who is granted permissions.
principalPermissions ::
  PrincipalPermissions
principalPermissions =
  PrincipalPermissions'
    { _ppPermissions = Nothing,
      _ppPrincipal = Nothing
    }

-- | The permissions that are granted to the principal.
ppPermissions :: Lens' PrincipalPermissions [Permission]
ppPermissions = lens _ppPermissions (\s a -> s {_ppPermissions = a}) . _Default . _Coerce

-- | The principal who is granted permissions.
ppPrincipal :: Lens' PrincipalPermissions (Maybe DataLakePrincipal)
ppPrincipal = lens _ppPrincipal (\s a -> s {_ppPrincipal = a})

instance FromJSON PrincipalPermissions where
  parseJSON =
    withObject
      "PrincipalPermissions"
      ( \x ->
          PrincipalPermissions'
            <$> (x .:? "Permissions" .!= mempty)
            <*> (x .:? "Principal")
      )

instance Hashable PrincipalPermissions

instance NFData PrincipalPermissions

instance ToJSON PrincipalPermissions where
  toJSON PrincipalPermissions' {..} =
    object
      ( catMaybes
          [ ("Permissions" .=) <$> _ppPermissions,
            ("Principal" .=) <$> _ppPrincipal
          ]
      )
