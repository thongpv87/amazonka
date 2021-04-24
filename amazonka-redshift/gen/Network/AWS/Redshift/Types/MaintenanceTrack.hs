{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.MaintenanceTrack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.MaintenanceTrack where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.UpdateTarget

-- | Defines a maintenance track that determines which Amazon Redshift version to apply during a maintenance window. If the value for @MaintenanceTrack@ is @current@ , the cluster is updated to the most recently certified maintenance release. If the value is @trailing@ , the cluster is updated to the previously certified maintenance release.
--
--
--
-- /See:/ 'maintenanceTrack' smart constructor.
data MaintenanceTrack = MaintenanceTrack'
  { _mtUpdateTargets ::
      !(Maybe [UpdateTarget]),
    _mtDatabaseVersion :: !(Maybe Text),
    _mtMaintenanceTrackName ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MaintenanceTrack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtUpdateTargets' - An array of 'UpdateTarget' objects to update with the maintenance track.
--
-- * 'mtDatabaseVersion' - The version number for the cluster release.
--
-- * 'mtMaintenanceTrackName' - The name of the maintenance track. Possible values are @current@ and @trailing@ .
maintenanceTrack ::
  MaintenanceTrack
maintenanceTrack =
  MaintenanceTrack'
    { _mtUpdateTargets = Nothing,
      _mtDatabaseVersion = Nothing,
      _mtMaintenanceTrackName = Nothing
    }

-- | An array of 'UpdateTarget' objects to update with the maintenance track.
mtUpdateTargets :: Lens' MaintenanceTrack [UpdateTarget]
mtUpdateTargets = lens _mtUpdateTargets (\s a -> s {_mtUpdateTargets = a}) . _Default . _Coerce

-- | The version number for the cluster release.
mtDatabaseVersion :: Lens' MaintenanceTrack (Maybe Text)
mtDatabaseVersion = lens _mtDatabaseVersion (\s a -> s {_mtDatabaseVersion = a})

-- | The name of the maintenance track. Possible values are @current@ and @trailing@ .
mtMaintenanceTrackName :: Lens' MaintenanceTrack (Maybe Text)
mtMaintenanceTrackName = lens _mtMaintenanceTrackName (\s a -> s {_mtMaintenanceTrackName = a})

instance FromXML MaintenanceTrack where
  parseXML x =
    MaintenanceTrack'
      <$> ( x .@? "UpdateTargets" .!@ mempty
              >>= may (parseXMLList "UpdateTarget")
          )
      <*> (x .@? "DatabaseVersion")
      <*> (x .@? "MaintenanceTrackName")

instance Hashable MaintenanceTrack

instance NFData MaintenanceTrack
