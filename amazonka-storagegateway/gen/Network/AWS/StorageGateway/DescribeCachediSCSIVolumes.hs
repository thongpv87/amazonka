{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.DescribeCachediSCSIVolumes
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation returns a description of the gateway volumes specified in
-- the request. This operation is supported only for the gateway-cached
-- volume architecture.
--
-- The list of gateway volumes in the request must be from one gateway. In
-- the response Amazon Storage Gateway returns volume information sorted by
-- volume Amazon Resource Name (ARN).
--
-- /See:/ <http://docs.aws.amazon.com/storagegateway/latest/APIReference/API_DescribeCachediSCSIVolumes.html AWS API Reference> for DescribeCachediSCSIVolumes.
module Network.AWS.StorageGateway.DescribeCachediSCSIVolumes
    (
    -- * Creating a Request
      DescribeCachediSCSIVolumes
    , describeCachediSCSIVolumes
    -- * Request Lenses
    , dcscsivVolumeARNs

    -- * Destructuring the Response
    , DescribeCachediSCSIVolumesResponse
    , describeCachediSCSIVolumesResponse
    -- * Response Lenses
    , dcscsivrsCachediSCSIVolumes
    , dcscsivrsStatus
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.StorageGateway.Types
import           Network.AWS.StorageGateway.Types.Product

-- | /See:/ 'describeCachediSCSIVolumes' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dcscsivVolumeARNs'
newtype DescribeCachediSCSIVolumes = DescribeCachediSCSIVolumes'
    { _dcscsivVolumeARNs :: [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeCachediSCSIVolumes' smart constructor.
describeCachediSCSIVolumes :: DescribeCachediSCSIVolumes
describeCachediSCSIVolumes =
    DescribeCachediSCSIVolumes'
    { _dcscsivVolumeARNs = mempty
    }

-- | Undocumented member.
dcscsivVolumeARNs :: Lens' DescribeCachediSCSIVolumes [Text]
dcscsivVolumeARNs = lens _dcscsivVolumeARNs (\ s a -> s{_dcscsivVolumeARNs = a}) . _Coerce;

instance AWSRequest DescribeCachediSCSIVolumes where
        type Sv DescribeCachediSCSIVolumes = StorageGateway
        type Rs DescribeCachediSCSIVolumes =
             DescribeCachediSCSIVolumesResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 DescribeCachediSCSIVolumesResponse' <$>
                   (x .?> "CachediSCSIVolumes" .!@ mempty) <*>
                     (pure (fromEnum s)))

instance ToHeaders DescribeCachediSCSIVolumes where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("StorageGateway_20130630.DescribeCachediSCSIVolumes"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeCachediSCSIVolumes where
        toJSON DescribeCachediSCSIVolumes'{..}
          = object ["VolumeARNs" .= _dcscsivVolumeARNs]

instance ToPath DescribeCachediSCSIVolumes where
        toPath = const "/"

instance ToQuery DescribeCachediSCSIVolumes where
        toQuery = const mempty

-- | A JSON object containing the following fields:
--
-- /See:/ 'describeCachediSCSIVolumesResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dcscsivrsCachediSCSIVolumes'
--
-- * 'dcscsivrsStatus'
data DescribeCachediSCSIVolumesResponse = DescribeCachediSCSIVolumesResponse'
    { _dcscsivrsCachediSCSIVolumes :: !(Maybe [CachediSCSIVolume])
    , _dcscsivrsStatus             :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeCachediSCSIVolumesResponse' smart constructor.
describeCachediSCSIVolumesResponse :: Int -> DescribeCachediSCSIVolumesResponse
describeCachediSCSIVolumesResponse pStatus_ =
    DescribeCachediSCSIVolumesResponse'
    { _dcscsivrsCachediSCSIVolumes = Nothing
    , _dcscsivrsStatus = pStatus_
    }

-- | An array of objects where each object contains metadata about one cached
-- volume.
dcscsivrsCachediSCSIVolumes :: Lens' DescribeCachediSCSIVolumesResponse [CachediSCSIVolume]
dcscsivrsCachediSCSIVolumes = lens _dcscsivrsCachediSCSIVolumes (\ s a -> s{_dcscsivrsCachediSCSIVolumes = a}) . _Default . _Coerce;

-- | Undocumented member.
dcscsivrsStatus :: Lens' DescribeCachediSCSIVolumesResponse Int
dcscsivrsStatus = lens _dcscsivrsStatus (\ s a -> s{_dcscsivrsStatus = a});
