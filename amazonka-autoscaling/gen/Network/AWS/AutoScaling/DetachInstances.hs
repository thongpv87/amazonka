{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.DetachInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes one or more instances from the specified Auto Scaling group.
--
--
-- After the instances are detached, you can manage them independent of the Auto Scaling group.
--
-- If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches instances to replace the ones that are detached.
--
-- If there is a Classic Load Balancer attached to the Auto Scaling group, the instances are deregistered from the load balancer. If there are target groups attached to the Auto Scaling group, the instances are deregistered from the target groups.
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/detach-instance-asg.html Detach EC2 instances from your Auto Scaling group> in the /Amazon EC2 Auto Scaling User Guide/ .
module Network.AWS.AutoScaling.DetachInstances
  ( -- * Creating a Request
    detachInstances,
    DetachInstances,

    -- * Request Lenses
    diInstanceIds,
    diAutoScalingGroupName,
    diShouldDecrementDesiredCapacity,

    -- * Destructuring the Response
    detachInstancesResponse,
    DetachInstancesResponse,

    -- * Response Lenses
    dirrsActivities,
    dirrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'detachInstances' smart constructor.
data DetachInstances = DetachInstances'
  { _diInstanceIds ::
      !(Maybe [Text]),
    _diAutoScalingGroupName :: !Text,
    _diShouldDecrementDesiredCapacity ::
      !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetachInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diInstanceIds' - The IDs of the instances. You can specify up to 20 instances.
--
-- * 'diAutoScalingGroupName' - The name of the Auto Scaling group.
--
-- * 'diShouldDecrementDesiredCapacity' - Indicates whether the Auto Scaling group decrements the desired capacity value by the number of instances detached.
detachInstances ::
  -- | 'diAutoScalingGroupName'
  Text ->
  -- | 'diShouldDecrementDesiredCapacity'
  Bool ->
  DetachInstances
detachInstances
  pAutoScalingGroupName_
  pShouldDecrementDesiredCapacity_ =
    DetachInstances'
      { _diInstanceIds = Nothing,
        _diAutoScalingGroupName = pAutoScalingGroupName_,
        _diShouldDecrementDesiredCapacity =
          pShouldDecrementDesiredCapacity_
      }

-- | The IDs of the instances. You can specify up to 20 instances.
diInstanceIds :: Lens' DetachInstances [Text]
diInstanceIds = lens _diInstanceIds (\s a -> s {_diInstanceIds = a}) . _Default . _Coerce

-- | The name of the Auto Scaling group.
diAutoScalingGroupName :: Lens' DetachInstances Text
diAutoScalingGroupName = lens _diAutoScalingGroupName (\s a -> s {_diAutoScalingGroupName = a})

-- | Indicates whether the Auto Scaling group decrements the desired capacity value by the number of instances detached.
diShouldDecrementDesiredCapacity :: Lens' DetachInstances Bool
diShouldDecrementDesiredCapacity = lens _diShouldDecrementDesiredCapacity (\s a -> s {_diShouldDecrementDesiredCapacity = a})

instance AWSRequest DetachInstances where
  type Rs DetachInstances = DetachInstancesResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DetachInstancesResult"
      ( \s h x ->
          DetachInstancesResponse'
            <$> ( x .@? "Activities" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DetachInstances

instance NFData DetachInstances

instance ToHeaders DetachInstances where
  toHeaders = const mempty

instance ToPath DetachInstances where
  toPath = const "/"

instance ToQuery DetachInstances where
  toQuery DetachInstances' {..} =
    mconcat
      [ "Action" =: ("DetachInstances" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "InstanceIds"
          =: toQuery (toQueryList "member" <$> _diInstanceIds),
        "AutoScalingGroupName" =: _diAutoScalingGroupName,
        "ShouldDecrementDesiredCapacity"
          =: _diShouldDecrementDesiredCapacity
      ]

-- | /See:/ 'detachInstancesResponse' smart constructor.
data DetachInstancesResponse = DetachInstancesResponse'
  { _dirrsActivities ::
      !(Maybe [Activity]),
    _dirrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DetachInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirrsActivities' - The activities related to detaching the instances from the Auto Scaling group.
--
-- * 'dirrsResponseStatus' - -- | The response status code.
detachInstancesResponse ::
  -- | 'dirrsResponseStatus'
  Int ->
  DetachInstancesResponse
detachInstancesResponse pResponseStatus_ =
  DetachInstancesResponse'
    { _dirrsActivities =
        Nothing,
      _dirrsResponseStatus = pResponseStatus_
    }

-- | The activities related to detaching the instances from the Auto Scaling group.
dirrsActivities :: Lens' DetachInstancesResponse [Activity]
dirrsActivities = lens _dirrsActivities (\s a -> s {_dirrsActivities = a}) . _Default . _Coerce

-- | -- | The response status code.
dirrsResponseStatus :: Lens' DetachInstancesResponse Int
dirrsResponseStatus = lens _dirrsResponseStatus (\s a -> s {_dirrsResponseStatus = a})

instance NFData DetachInstancesResponse
