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
-- Module      : Network.AWS.AlexaBusiness.ListSmartHomeAppliances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the smart home appliances associated with a room.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.ListSmartHomeAppliances
  ( -- * Creating a Request
    listSmartHomeAppliances,
    ListSmartHomeAppliances,

    -- * Request Lenses
    lshaNextToken,
    lshaMaxResults,
    lshaRoomARN,

    -- * Destructuring the Response
    listSmartHomeAppliancesResponse,
    ListSmartHomeAppliancesResponse,

    -- * Response Lenses
    lsharrsNextToken,
    lsharrsSmartHomeAppliances,
    lsharrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listSmartHomeAppliances' smart constructor.
data ListSmartHomeAppliances = ListSmartHomeAppliances'
  { _lshaNextToken ::
      !(Maybe Text),
    _lshaMaxResults ::
      !(Maybe Nat),
    _lshaRoomARN :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListSmartHomeAppliances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lshaNextToken' - The tokens used for pagination.
--
-- * 'lshaMaxResults' - The maximum number of appliances to be returned, per paginated calls.
--
-- * 'lshaRoomARN' - The room that the appliances are associated with.
listSmartHomeAppliances ::
  -- | 'lshaRoomARN'
  Text ->
  ListSmartHomeAppliances
listSmartHomeAppliances pRoomARN_ =
  ListSmartHomeAppliances'
    { _lshaNextToken = Nothing,
      _lshaMaxResults = Nothing,
      _lshaRoomARN = pRoomARN_
    }

-- | The tokens used for pagination.
lshaNextToken :: Lens' ListSmartHomeAppliances (Maybe Text)
lshaNextToken = lens _lshaNextToken (\s a -> s {_lshaNextToken = a})

-- | The maximum number of appliances to be returned, per paginated calls.
lshaMaxResults :: Lens' ListSmartHomeAppliances (Maybe Natural)
lshaMaxResults = lens _lshaMaxResults (\s a -> s {_lshaMaxResults = a}) . mapping _Nat

-- | The room that the appliances are associated with.
lshaRoomARN :: Lens' ListSmartHomeAppliances Text
lshaRoomARN = lens _lshaRoomARN (\s a -> s {_lshaRoomARN = a})

instance AWSPager ListSmartHomeAppliances where
  page rq rs
    | stop (rs ^. lsharrsNextToken) = Nothing
    | stop (rs ^. lsharrsSmartHomeAppliances) = Nothing
    | otherwise =
      Just $ rq & lshaNextToken .~ rs ^. lsharrsNextToken

instance AWSRequest ListSmartHomeAppliances where
  type
    Rs ListSmartHomeAppliances =
      ListSmartHomeAppliancesResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          ListSmartHomeAppliancesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "SmartHomeAppliances" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListSmartHomeAppliances

instance NFData ListSmartHomeAppliances

instance ToHeaders ListSmartHomeAppliances where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AlexaForBusiness.ListSmartHomeAppliances" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListSmartHomeAppliances where
  toJSON ListSmartHomeAppliances' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lshaNextToken,
            ("MaxResults" .=) <$> _lshaMaxResults,
            Just ("RoomArn" .= _lshaRoomARN)
          ]
      )

instance ToPath ListSmartHomeAppliances where
  toPath = const "/"

instance ToQuery ListSmartHomeAppliances where
  toQuery = const mempty

-- | /See:/ 'listSmartHomeAppliancesResponse' smart constructor.
data ListSmartHomeAppliancesResponse = ListSmartHomeAppliancesResponse'
  { _lsharrsNextToken ::
      !( Maybe
           Text
       ),
    _lsharrsSmartHomeAppliances ::
      !( Maybe
           [SmartHomeAppliance]
       ),
    _lsharrsResponseStatus ::
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

-- | Creates a value of 'ListSmartHomeAppliancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsharrsNextToken' - The tokens used for pagination.
--
-- * 'lsharrsSmartHomeAppliances' - The smart home appliances.
--
-- * 'lsharrsResponseStatus' - -- | The response status code.
listSmartHomeAppliancesResponse ::
  -- | 'lsharrsResponseStatus'
  Int ->
  ListSmartHomeAppliancesResponse
listSmartHomeAppliancesResponse pResponseStatus_ =
  ListSmartHomeAppliancesResponse'
    { _lsharrsNextToken =
        Nothing,
      _lsharrsSmartHomeAppliances = Nothing,
      _lsharrsResponseStatus = pResponseStatus_
    }

-- | The tokens used for pagination.
lsharrsNextToken :: Lens' ListSmartHomeAppliancesResponse (Maybe Text)
lsharrsNextToken = lens _lsharrsNextToken (\s a -> s {_lsharrsNextToken = a})

-- | The smart home appliances.
lsharrsSmartHomeAppliances :: Lens' ListSmartHomeAppliancesResponse [SmartHomeAppliance]
lsharrsSmartHomeAppliances = lens _lsharrsSmartHomeAppliances (\s a -> s {_lsharrsSmartHomeAppliances = a}) . _Default . _Coerce

-- | -- | The response status code.
lsharrsResponseStatus :: Lens' ListSmartHomeAppliancesResponse Int
lsharrsResponseStatus = lens _lsharrsResponseStatus (\s a -> s {_lsharrsResponseStatus = a})

instance NFData ListSmartHomeAppliancesResponse
