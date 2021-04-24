{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.SnapshotSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.SnapshotSchedule where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.ClusterAssociatedToSchedule
import Network.AWS.Redshift.Types.Tag

-- | Describes a snapshot schedule. You can set a regular interval for creating snapshots of a cluster. You can also schedule snapshots for specific dates.
--
--
--
-- /See:/ 'snapshotSchedule' smart constructor.
data SnapshotSchedule = SnapshotSchedule'
  { _ssNextInvocations ::
      !(Maybe [ISO8601]),
    _ssAssociatedClusters ::
      !( Maybe
           [ClusterAssociatedToSchedule]
       ),
    _ssScheduleIdentifier ::
      !(Maybe Text),
    _ssScheduleDescription ::
      !(Maybe Text),
    _ssScheduleDefinitions ::
      !(Maybe [Text]),
    _ssAssociatedClusterCount ::
      !(Maybe Int),
    _ssTags :: !(Maybe [Tag])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SnapshotSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssNextInvocations' -
--
-- * 'ssAssociatedClusters' - A list of clusters associated with the schedule. A maximum of 100 clusters is returned.
--
-- * 'ssScheduleIdentifier' - A unique identifier for the schedule.
--
-- * 'ssScheduleDescription' - The description of the schedule.
--
-- * 'ssScheduleDefinitions' - A list of ScheduleDefinitions.
--
-- * 'ssAssociatedClusterCount' - The number of clusters associated with the schedule.
--
-- * 'ssTags' - An optional set of tags describing the schedule.
snapshotSchedule ::
  SnapshotSchedule
snapshotSchedule =
  SnapshotSchedule'
    { _ssNextInvocations = Nothing,
      _ssAssociatedClusters = Nothing,
      _ssScheduleIdentifier = Nothing,
      _ssScheduleDescription = Nothing,
      _ssScheduleDefinitions = Nothing,
      _ssAssociatedClusterCount = Nothing,
      _ssTags = Nothing
    }

-- |
ssNextInvocations :: Lens' SnapshotSchedule [UTCTime]
ssNextInvocations = lens _ssNextInvocations (\s a -> s {_ssNextInvocations = a}) . _Default . _Coerce

-- | A list of clusters associated with the schedule. A maximum of 100 clusters is returned.
ssAssociatedClusters :: Lens' SnapshotSchedule [ClusterAssociatedToSchedule]
ssAssociatedClusters = lens _ssAssociatedClusters (\s a -> s {_ssAssociatedClusters = a}) . _Default . _Coerce

-- | A unique identifier for the schedule.
ssScheduleIdentifier :: Lens' SnapshotSchedule (Maybe Text)
ssScheduleIdentifier = lens _ssScheduleIdentifier (\s a -> s {_ssScheduleIdentifier = a})

-- | The description of the schedule.
ssScheduleDescription :: Lens' SnapshotSchedule (Maybe Text)
ssScheduleDescription = lens _ssScheduleDescription (\s a -> s {_ssScheduleDescription = a})

-- | A list of ScheduleDefinitions.
ssScheduleDefinitions :: Lens' SnapshotSchedule [Text]
ssScheduleDefinitions = lens _ssScheduleDefinitions (\s a -> s {_ssScheduleDefinitions = a}) . _Default . _Coerce

-- | The number of clusters associated with the schedule.
ssAssociatedClusterCount :: Lens' SnapshotSchedule (Maybe Int)
ssAssociatedClusterCount = lens _ssAssociatedClusterCount (\s a -> s {_ssAssociatedClusterCount = a})

-- | An optional set of tags describing the schedule.
ssTags :: Lens' SnapshotSchedule [Tag]
ssTags = lens _ssTags (\s a -> s {_ssTags = a}) . _Default . _Coerce

instance FromXML SnapshotSchedule where
  parseXML x =
    SnapshotSchedule'
      <$> ( x .@? "NextInvocations" .!@ mempty
              >>= may (parseXMLList "SnapshotTime")
          )
      <*> ( x .@? "AssociatedClusters" .!@ mempty
              >>= may (parseXMLList "ClusterAssociatedToSchedule")
          )
      <*> (x .@? "ScheduleIdentifier")
      <*> (x .@? "ScheduleDescription")
      <*> ( x .@? "ScheduleDefinitions" .!@ mempty
              >>= may (parseXMLList "ScheduleDefinition")
          )
      <*> (x .@? "AssociatedClusterCount")
      <*> ( x .@? "Tags" .!@ mempty
              >>= may (parseXMLList "Tag")
          )

instance Hashable SnapshotSchedule

instance NFData SnapshotSchedule
