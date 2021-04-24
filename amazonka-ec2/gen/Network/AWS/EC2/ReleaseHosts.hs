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
-- Module      : Network.AWS.EC2.ReleaseHosts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- When you no longer want to use an On-Demand Dedicated Host it can be released. On-Demand billing is stopped and the host goes into @released@ state. The host ID of Dedicated Hosts that have been released can no longer be specified in another request, for example, to modify the host. You must stop or terminate all instances on a host before it can be released.
--
--
-- When Dedicated Hosts are released, it may take some time for them to stop counting toward your limit and you may receive capacity errors when trying to allocate new Dedicated Hosts. Wait a few minutes and then try again.
--
-- Released hosts still appear in a 'DescribeHosts' response.
module Network.AWS.EC2.ReleaseHosts
  ( -- * Creating a Request
    releaseHosts,
    ReleaseHosts,

    -- * Request Lenses
    rhHostIds,

    -- * Destructuring the Response
    releaseHostsResponse,
    ReleaseHostsResponse,

    -- * Response Lenses
    rhrrsUnsuccessful,
    rhrrsSuccessful,
    rhrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'releaseHosts' smart constructor.
newtype ReleaseHosts = ReleaseHosts'
  { _rhHostIds ::
      [Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReleaseHosts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhHostIds' - The IDs of the Dedicated Hosts to release.
releaseHosts ::
  ReleaseHosts
releaseHosts = ReleaseHosts' {_rhHostIds = mempty}

-- | The IDs of the Dedicated Hosts to release.
rhHostIds :: Lens' ReleaseHosts [Text]
rhHostIds = lens _rhHostIds (\s a -> s {_rhHostIds = a}) . _Coerce

instance AWSRequest ReleaseHosts where
  type Rs ReleaseHosts = ReleaseHostsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ReleaseHostsResponse'
            <$> ( x .@? "unsuccessful" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> ( x .@? "successful" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ReleaseHosts

instance NFData ReleaseHosts

instance ToHeaders ReleaseHosts where
  toHeaders = const mempty

instance ToPath ReleaseHosts where
  toPath = const "/"

instance ToQuery ReleaseHosts where
  toQuery ReleaseHosts' {..} =
    mconcat
      [ "Action" =: ("ReleaseHosts" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQueryList "HostId" _rhHostIds
      ]

-- | /See:/ 'releaseHostsResponse' smart constructor.
data ReleaseHostsResponse = ReleaseHostsResponse'
  { _rhrrsUnsuccessful ::
      !(Maybe [UnsuccessfulItem]),
    _rhrrsSuccessful ::
      !(Maybe [Text]),
    _rhrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReleaseHostsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhrrsUnsuccessful' - The IDs of the Dedicated Hosts that could not be released, including an error message.
--
-- * 'rhrrsSuccessful' - The IDs of the Dedicated Hosts that were successfully released.
--
-- * 'rhrrsResponseStatus' - -- | The response status code.
releaseHostsResponse ::
  -- | 'rhrrsResponseStatus'
  Int ->
  ReleaseHostsResponse
releaseHostsResponse pResponseStatus_ =
  ReleaseHostsResponse'
    { _rhrrsUnsuccessful = Nothing,
      _rhrrsSuccessful = Nothing,
      _rhrrsResponseStatus = pResponseStatus_
    }

-- | The IDs of the Dedicated Hosts that could not be released, including an error message.
rhrrsUnsuccessful :: Lens' ReleaseHostsResponse [UnsuccessfulItem]
rhrrsUnsuccessful = lens _rhrrsUnsuccessful (\s a -> s {_rhrrsUnsuccessful = a}) . _Default . _Coerce

-- | The IDs of the Dedicated Hosts that were successfully released.
rhrrsSuccessful :: Lens' ReleaseHostsResponse [Text]
rhrrsSuccessful = lens _rhrrsSuccessful (\s a -> s {_rhrrsSuccessful = a}) . _Default . _Coerce

-- | -- | The response status code.
rhrrsResponseStatus :: Lens' ReleaseHostsResponse Int
rhrrsResponseStatus = lens _rhrrsResponseStatus (\s a -> s {_rhrrsResponseStatus = a})

instance NFData ReleaseHostsResponse
