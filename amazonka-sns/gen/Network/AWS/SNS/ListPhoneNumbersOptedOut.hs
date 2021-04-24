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
-- Module      : Network.AWS.SNS.ListPhoneNumbersOptedOut
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of phone numbers that are opted out, meaning you cannot send SMS messages to them.
--
--
-- The results for @ListPhoneNumbersOptedOut@ are paginated, and each page returns up to 100 phone numbers. If additional phone numbers are available after the first page of results, then a @NextToken@ string will be returned. To receive the next page, you call @ListPhoneNumbersOptedOut@ again using the @NextToken@ string received from the previous call. When there are no more records to return, @NextToken@ will be null.
--
--
-- This operation returns paginated results.
module Network.AWS.SNS.ListPhoneNumbersOptedOut
  ( -- * Creating a Request
    listPhoneNumbersOptedOut,
    ListPhoneNumbersOptedOut,

    -- * Request Lenses
    lpnooNextToken,

    -- * Destructuring the Response
    listPhoneNumbersOptedOutResponse,
    ListPhoneNumbersOptedOutResponse,

    -- * Response Lenses
    lpnoorrsNextToken,
    lpnoorrsPhoneNumbers,
    lpnoorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SNS.Types

-- | The input for the @ListPhoneNumbersOptedOut@ action.
--
--
--
-- /See:/ 'listPhoneNumbersOptedOut' smart constructor.
newtype ListPhoneNumbersOptedOut = ListPhoneNumbersOptedOut'
  { _lpnooNextToken ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPhoneNumbersOptedOut' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpnooNextToken' - A @NextToken@ string is used when you call the @ListPhoneNumbersOptedOut@ action to retrieve additional records that are available after the first page of results.
listPhoneNumbersOptedOut ::
  ListPhoneNumbersOptedOut
listPhoneNumbersOptedOut =
  ListPhoneNumbersOptedOut'
    { _lpnooNextToken =
        Nothing
    }

-- | A @NextToken@ string is used when you call the @ListPhoneNumbersOptedOut@ action to retrieve additional records that are available after the first page of results.
lpnooNextToken :: Lens' ListPhoneNumbersOptedOut (Maybe Text)
lpnooNextToken = lens _lpnooNextToken (\s a -> s {_lpnooNextToken = a})

instance AWSPager ListPhoneNumbersOptedOut where
  page rq rs
    | stop (rs ^. lpnoorrsNextToken) = Nothing
    | stop (rs ^. lpnoorrsPhoneNumbers) = Nothing
    | otherwise =
      Just $ rq & lpnooNextToken .~ rs ^. lpnoorrsNextToken

instance AWSRequest ListPhoneNumbersOptedOut where
  type
    Rs ListPhoneNumbersOptedOut =
      ListPhoneNumbersOptedOutResponse
  request = postQuery sns
  response =
    receiveXMLWrapper
      "ListPhoneNumbersOptedOutResult"
      ( \s h x ->
          ListPhoneNumbersOptedOutResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "phoneNumbers" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListPhoneNumbersOptedOut

instance NFData ListPhoneNumbersOptedOut

instance ToHeaders ListPhoneNumbersOptedOut where
  toHeaders = const mempty

instance ToPath ListPhoneNumbersOptedOut where
  toPath = const "/"

instance ToQuery ListPhoneNumbersOptedOut where
  toQuery ListPhoneNumbersOptedOut' {..} =
    mconcat
      [ "Action"
          =: ("ListPhoneNumbersOptedOut" :: ByteString),
        "Version" =: ("2010-03-31" :: ByteString),
        "nextToken" =: _lpnooNextToken
      ]

-- | The response from the @ListPhoneNumbersOptedOut@ action.
--
--
--
-- /See:/ 'listPhoneNumbersOptedOutResponse' smart constructor.
data ListPhoneNumbersOptedOutResponse = ListPhoneNumbersOptedOutResponse'
  { _lpnoorrsNextToken ::
      !( Maybe
           Text
       ),
    _lpnoorrsPhoneNumbers ::
      !( Maybe
           [Text]
       ),
    _lpnoorrsResponseStatus ::
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

-- | Creates a value of 'ListPhoneNumbersOptedOutResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpnoorrsNextToken' - A @NextToken@ string is returned when you call the @ListPhoneNumbersOptedOut@ action if additional records are available after the first page of results.
--
-- * 'lpnoorrsPhoneNumbers' - A list of phone numbers that are opted out of receiving SMS messages. The list is paginated, and each page can contain up to 100 phone numbers.
--
-- * 'lpnoorrsResponseStatus' - -- | The response status code.
listPhoneNumbersOptedOutResponse ::
  -- | 'lpnoorrsResponseStatus'
  Int ->
  ListPhoneNumbersOptedOutResponse
listPhoneNumbersOptedOutResponse pResponseStatus_ =
  ListPhoneNumbersOptedOutResponse'
    { _lpnoorrsNextToken =
        Nothing,
      _lpnoorrsPhoneNumbers = Nothing,
      _lpnoorrsResponseStatus =
        pResponseStatus_
    }

-- | A @NextToken@ string is returned when you call the @ListPhoneNumbersOptedOut@ action if additional records are available after the first page of results.
lpnoorrsNextToken :: Lens' ListPhoneNumbersOptedOutResponse (Maybe Text)
lpnoorrsNextToken = lens _lpnoorrsNextToken (\s a -> s {_lpnoorrsNextToken = a})

-- | A list of phone numbers that are opted out of receiving SMS messages. The list is paginated, and each page can contain up to 100 phone numbers.
lpnoorrsPhoneNumbers :: Lens' ListPhoneNumbersOptedOutResponse [Text]
lpnoorrsPhoneNumbers = lens _lpnoorrsPhoneNumbers (\s a -> s {_lpnoorrsPhoneNumbers = a}) . _Default . _Coerce

-- | -- | The response status code.
lpnoorrsResponseStatus :: Lens' ListPhoneNumbersOptedOutResponse Int
lpnoorrsResponseStatus = lens _lpnoorrsResponseStatus (\s a -> s {_lpnoorrsResponseStatus = a})

instance NFData ListPhoneNumbersOptedOutResponse
