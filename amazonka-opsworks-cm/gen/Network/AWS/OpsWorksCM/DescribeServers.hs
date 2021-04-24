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
-- Module      : Network.AWS.OpsWorksCM.DescribeServers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all configuration management servers that are identified with your account. Only the stored results from Amazon DynamoDB are returned. AWS OpsWorks CM does not query other services.
--
--
-- This operation is synchronous.
--
-- A @ResourceNotFoundException@ is thrown when the server does not exist. A @ValidationException@ is raised when parameters of the request are not valid.
--
--
-- This operation returns paginated results.
module Network.AWS.OpsWorksCM.DescribeServers
  ( -- * Creating a Request
    describeServers,
    DescribeServers,

    -- * Request Lenses
    dNextToken,
    dMaxResults,
    dServerName,

    -- * Destructuring the Response
    describeServersResponse,
    DescribeServersResponse,

    -- * Response Lenses
    drsNextToken,
    drsServers,
    drsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorksCM.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeServers' smart constructor.
data DescribeServers = DescribeServers'
  { _dNextToken ::
      !(Maybe Text),
    _dMaxResults :: !(Maybe Nat),
    _dServerName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeServers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNextToken' - This is not currently implemented for @DescribeServers@ requests.
--
-- * 'dMaxResults' - This is not currently implemented for @DescribeServers@ requests.
--
-- * 'dServerName' - Describes the server with the specified ServerName.
describeServers ::
  DescribeServers
describeServers =
  DescribeServers'
    { _dNextToken = Nothing,
      _dMaxResults = Nothing,
      _dServerName = Nothing
    }

-- | This is not currently implemented for @DescribeServers@ requests.
dNextToken :: Lens' DescribeServers (Maybe Text)
dNextToken = lens _dNextToken (\s a -> s {_dNextToken = a})

-- | This is not currently implemented for @DescribeServers@ requests.
dMaxResults :: Lens' DescribeServers (Maybe Natural)
dMaxResults = lens _dMaxResults (\s a -> s {_dMaxResults = a}) . mapping _Nat

-- | Describes the server with the specified ServerName.
dServerName :: Lens' DescribeServers (Maybe Text)
dServerName = lens _dServerName (\s a -> s {_dServerName = a})

instance AWSPager DescribeServers where
  page rq rs
    | stop (rs ^. drsNextToken) = Nothing
    | stop (rs ^. drsServers) = Nothing
    | otherwise =
      Just $ rq & dNextToken .~ rs ^. drsNextToken

instance AWSRequest DescribeServers where
  type Rs DescribeServers = DescribeServersResponse
  request = postJSON opsWorksCM
  response =
    receiveJSON
      ( \s h x ->
          DescribeServersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Servers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeServers

instance NFData DescribeServers

instance ToHeaders DescribeServers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorksCM_V2016_11_01.DescribeServers" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeServers where
  toJSON DescribeServers' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dNextToken,
            ("MaxResults" .=) <$> _dMaxResults,
            ("ServerName" .=) <$> _dServerName
          ]
      )

instance ToPath DescribeServers where
  toPath = const "/"

instance ToQuery DescribeServers where
  toQuery = const mempty

-- | /See:/ 'describeServersResponse' smart constructor.
data DescribeServersResponse = DescribeServersResponse'
  { _drsNextToken ::
      !(Maybe Text),
    _drsServers ::
      !(Maybe [Server]),
    _drsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeServersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsNextToken' - This is not currently implemented for @DescribeServers@ requests.
--
-- * 'drsServers' - Contains the response to a @DescribeServers@ request. /For Chef Automate servers:/ If @DescribeServersResponse$Servers$EngineAttributes@ includes CHEF_MAJOR_UPGRADE_AVAILABLE, you can upgrade the Chef Automate server to Chef Automate 2. To be eligible for upgrade, a server running Chef Automate 1 must have had at least one successful maintenance run after November 1, 2019. /For Puppet Server:/ @DescribeServersResponse$Servers$EngineAttributes@ contains PUPPET_API_CA_CERT. This is the PEM-encoded CA certificate that is used by the Puppet API over TCP port number 8140. The CA certificate is also used to sign node certificates.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeServersResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeServersResponse
describeServersResponse pResponseStatus_ =
  DescribeServersResponse'
    { _drsNextToken = Nothing,
      _drsServers = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | This is not currently implemented for @DescribeServers@ requests.
drsNextToken :: Lens' DescribeServersResponse (Maybe Text)
drsNextToken = lens _drsNextToken (\s a -> s {_drsNextToken = a})

-- | Contains the response to a @DescribeServers@ request. /For Chef Automate servers:/ If @DescribeServersResponse$Servers$EngineAttributes@ includes CHEF_MAJOR_UPGRADE_AVAILABLE, you can upgrade the Chef Automate server to Chef Automate 2. To be eligible for upgrade, a server running Chef Automate 1 must have had at least one successful maintenance run after November 1, 2019. /For Puppet Server:/ @DescribeServersResponse$Servers$EngineAttributes@ contains PUPPET_API_CA_CERT. This is the PEM-encoded CA certificate that is used by the Puppet API over TCP port number 8140. The CA certificate is also used to sign node certificates.
drsServers :: Lens' DescribeServersResponse [Server]
drsServers = lens _drsServers (\s a -> s {_drsServers = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeServersResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeServersResponse
