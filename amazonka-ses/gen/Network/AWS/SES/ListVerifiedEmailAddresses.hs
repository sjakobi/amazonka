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
-- Module      : Network.AWS.SES.ListVerifiedEmailAddresses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated. Use the @ListIdentities@ operation to list the email addresses and domains associated with your account.
module Network.AWS.SES.ListVerifiedEmailAddresses
  ( -- * Creating a Request
    listVerifiedEmailAddresses,
    ListVerifiedEmailAddresses,

    -- * Destructuring the Response
    listVerifiedEmailAddressesResponse,
    ListVerifiedEmailAddressesResponse,

    -- * Response Lenses
    lvearrsVerifiedEmailAddresses,
    lvearrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | /See:/ 'listVerifiedEmailAddresses' smart constructor.
data ListVerifiedEmailAddresses = ListVerifiedEmailAddresses'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListVerifiedEmailAddresses' with the minimum fields required to make a request.
listVerifiedEmailAddresses ::
  ListVerifiedEmailAddresses
listVerifiedEmailAddresses =
  ListVerifiedEmailAddresses'

instance AWSRequest ListVerifiedEmailAddresses where
  type
    Rs ListVerifiedEmailAddresses =
      ListVerifiedEmailAddressesResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "ListVerifiedEmailAddressesResult"
      ( \s h x ->
          ListVerifiedEmailAddressesResponse'
            <$> ( x .@? "VerifiedEmailAddresses" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListVerifiedEmailAddresses

instance NFData ListVerifiedEmailAddresses

instance ToHeaders ListVerifiedEmailAddresses where
  toHeaders = const mempty

instance ToPath ListVerifiedEmailAddresses where
  toPath = const "/"

instance ToQuery ListVerifiedEmailAddresses where
  toQuery =
    const
      ( mconcat
          [ "Action"
              =: ("ListVerifiedEmailAddresses" :: ByteString),
            "Version" =: ("2010-12-01" :: ByteString)
          ]
      )

-- | A list of email addresses that you have verified with Amazon SES under your AWS account.
--
--
--
-- /See:/ 'listVerifiedEmailAddressesResponse' smart constructor.
data ListVerifiedEmailAddressesResponse = ListVerifiedEmailAddressesResponse'
  { _lvearrsVerifiedEmailAddresses ::
      !( Maybe
           [Text]
       ),
    _lvearrsResponseStatus ::
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

-- | Creates a value of 'ListVerifiedEmailAddressesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvearrsVerifiedEmailAddresses' - A list of email addresses that have been verified.
--
-- * 'lvearrsResponseStatus' - -- | The response status code.
listVerifiedEmailAddressesResponse ::
  -- | 'lvearrsResponseStatus'
  Int ->
  ListVerifiedEmailAddressesResponse
listVerifiedEmailAddressesResponse pResponseStatus_ =
  ListVerifiedEmailAddressesResponse'
    { _lvearrsVerifiedEmailAddresses =
        Nothing,
      _lvearrsResponseStatus =
        pResponseStatus_
    }

-- | A list of email addresses that have been verified.
lvearrsVerifiedEmailAddresses :: Lens' ListVerifiedEmailAddressesResponse [Text]
lvearrsVerifiedEmailAddresses = lens _lvearrsVerifiedEmailAddresses (\s a -> s {_lvearrsVerifiedEmailAddresses = a}) . _Default . _Coerce

-- | -- | The response status code.
lvearrsResponseStatus :: Lens' ListVerifiedEmailAddressesResponse Int
lvearrsResponseStatus = lens _lvearrsResponseStatus (\s a -> s {_lvearrsResponseStatus = a})

instance NFData ListVerifiedEmailAddressesResponse
