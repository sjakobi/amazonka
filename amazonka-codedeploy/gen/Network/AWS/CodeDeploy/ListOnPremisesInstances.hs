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
-- Module      : Network.AWS.CodeDeploy.ListOnPremisesInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of names for one or more on-premises instances.
--
--
-- Unless otherwise specified, both registered and deregistered on-premises instance names are listed. To list only registered or deregistered on-premises instance names, use the registration status parameter.
--
--
-- This operation returns paginated results.
module Network.AWS.CodeDeploy.ListOnPremisesInstances
  ( -- * Creating a Request
    listOnPremisesInstances,
    ListOnPremisesInstances,

    -- * Request Lenses
    lopiNextToken,
    lopiTagFilters,
    lopiRegistrationStatus,

    -- * Destructuring the Response
    listOnPremisesInstancesResponse,
    ListOnPremisesInstancesResponse,

    -- * Response Lenses
    lopirrsNextToken,
    lopirrsInstanceNames,
    lopirrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @ListOnPremisesInstances@ operation.
--
--
--
-- /See:/ 'listOnPremisesInstances' smart constructor.
data ListOnPremisesInstances = ListOnPremisesInstances'
  { _lopiNextToken ::
      !(Maybe Text),
    _lopiTagFilters ::
      !(Maybe [TagFilter]),
    _lopiRegistrationStatus ::
      !( Maybe
           RegistrationStatus
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

-- | Creates a value of 'ListOnPremisesInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lopiNextToken' - An identifier returned from the previous list on-premises instances call. It can be used to return the next set of on-premises instances in the list.
--
-- * 'lopiTagFilters' - The on-premises instance tags that are used to restrict the on-premises instance names returned.
--
-- * 'lopiRegistrationStatus' - The registration status of the on-premises instances:     * @Deregistered@ : Include deregistered on-premises instances in the resulting list.     * @Registered@ : Include registered on-premises instances in the resulting list.
listOnPremisesInstances ::
  ListOnPremisesInstances
listOnPremisesInstances =
  ListOnPremisesInstances'
    { _lopiNextToken = Nothing,
      _lopiTagFilters = Nothing,
      _lopiRegistrationStatus = Nothing
    }

-- | An identifier returned from the previous list on-premises instances call. It can be used to return the next set of on-premises instances in the list.
lopiNextToken :: Lens' ListOnPremisesInstances (Maybe Text)
lopiNextToken = lens _lopiNextToken (\s a -> s {_lopiNextToken = a})

-- | The on-premises instance tags that are used to restrict the on-premises instance names returned.
lopiTagFilters :: Lens' ListOnPremisesInstances [TagFilter]
lopiTagFilters = lens _lopiTagFilters (\s a -> s {_lopiTagFilters = a}) . _Default . _Coerce

-- | The registration status of the on-premises instances:     * @Deregistered@ : Include deregistered on-premises instances in the resulting list.     * @Registered@ : Include registered on-premises instances in the resulting list.
lopiRegistrationStatus :: Lens' ListOnPremisesInstances (Maybe RegistrationStatus)
lopiRegistrationStatus = lens _lopiRegistrationStatus (\s a -> s {_lopiRegistrationStatus = a})

instance AWSPager ListOnPremisesInstances where
  page rq rs
    | stop (rs ^. lopirrsNextToken) = Nothing
    | stop (rs ^. lopirrsInstanceNames) = Nothing
    | otherwise =
      Just $ rq & lopiNextToken .~ rs ^. lopirrsNextToken

instance AWSRequest ListOnPremisesInstances where
  type
    Rs ListOnPremisesInstances =
      ListOnPremisesInstancesResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          ListOnPremisesInstancesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "instanceNames" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListOnPremisesInstances

instance NFData ListOnPremisesInstances

instance ToHeaders ListOnPremisesInstances where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.ListOnPremisesInstances" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListOnPremisesInstances where
  toJSON ListOnPremisesInstances' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lopiNextToken,
            ("tagFilters" .=) <$> _lopiTagFilters,
            ("registrationStatus" .=)
              <$> _lopiRegistrationStatus
          ]
      )

instance ToPath ListOnPremisesInstances where
  toPath = const "/"

instance ToQuery ListOnPremisesInstances where
  toQuery = const mempty

-- | Represents the output of the list on-premises instances operation.
--
--
--
-- /See:/ 'listOnPremisesInstancesResponse' smart constructor.
data ListOnPremisesInstancesResponse = ListOnPremisesInstancesResponse'
  { _lopirrsNextToken ::
      !( Maybe
           Text
       ),
    _lopirrsInstanceNames ::
      !( Maybe
           [Text]
       ),
    _lopirrsResponseStatus ::
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

-- | Creates a value of 'ListOnPremisesInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lopirrsNextToken' - If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list on-premises instances call to return the next set of on-premises instances in the list.
--
-- * 'lopirrsInstanceNames' - The list of matching on-premises instance names.
--
-- * 'lopirrsResponseStatus' - -- | The response status code.
listOnPremisesInstancesResponse ::
  -- | 'lopirrsResponseStatus'
  Int ->
  ListOnPremisesInstancesResponse
listOnPremisesInstancesResponse pResponseStatus_ =
  ListOnPremisesInstancesResponse'
    { _lopirrsNextToken =
        Nothing,
      _lopirrsInstanceNames = Nothing,
      _lopirrsResponseStatus = pResponseStatus_
    }

-- | If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list on-premises instances call to return the next set of on-premises instances in the list.
lopirrsNextToken :: Lens' ListOnPremisesInstancesResponse (Maybe Text)
lopirrsNextToken = lens _lopirrsNextToken (\s a -> s {_lopirrsNextToken = a})

-- | The list of matching on-premises instance names.
lopirrsInstanceNames :: Lens' ListOnPremisesInstancesResponse [Text]
lopirrsInstanceNames = lens _lopirrsInstanceNames (\s a -> s {_lopirrsInstanceNames = a}) . _Default . _Coerce

-- | -- | The response status code.
lopirrsResponseStatus :: Lens' ListOnPremisesInstancesResponse Int
lopirrsResponseStatus = lens _lopirrsResponseStatus (\s a -> s {_lopirrsResponseStatus = a})

instance NFData ListOnPremisesInstancesResponse
