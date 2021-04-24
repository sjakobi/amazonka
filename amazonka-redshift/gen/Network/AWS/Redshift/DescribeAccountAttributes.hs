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
-- Module      : Network.AWS.Redshift.DescribeAccountAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of attributes attached to an account
module Network.AWS.Redshift.DescribeAccountAttributes
  ( -- * Creating a Request
    describeAccountAttributes,
    DescribeAccountAttributes,

    -- * Request Lenses
    daaAttributeNames,

    -- * Destructuring the Response
    describeAccountAttributesResponse,
    DescribeAccountAttributesResponse,

    -- * Response Lenses
    daarrsAccountAttributes,
    daarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAccountAttributes' smart constructor.
newtype DescribeAccountAttributes = DescribeAccountAttributes'
  { _daaAttributeNames ::
      Maybe [Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAccountAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daaAttributeNames' - A list of attribute names.
describeAccountAttributes ::
  DescribeAccountAttributes
describeAccountAttributes =
  DescribeAccountAttributes'
    { _daaAttributeNames =
        Nothing
    }

-- | A list of attribute names.
daaAttributeNames :: Lens' DescribeAccountAttributes [Text]
daaAttributeNames = lens _daaAttributeNames (\s a -> s {_daaAttributeNames = a}) . _Default . _Coerce

instance AWSRequest DescribeAccountAttributes where
  type
    Rs DescribeAccountAttributes =
      DescribeAccountAttributesResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DescribeAccountAttributesResult"
      ( \s h x ->
          DescribeAccountAttributesResponse'
            <$> ( x .@? "AccountAttributes" .!@ mempty
                    >>= may (parseXMLList "AccountAttribute")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAccountAttributes

instance NFData DescribeAccountAttributes

instance ToHeaders DescribeAccountAttributes where
  toHeaders = const mempty

instance ToPath DescribeAccountAttributes where
  toPath = const "/"

instance ToQuery DescribeAccountAttributes where
  toQuery DescribeAccountAttributes' {..} =
    mconcat
      [ "Action"
          =: ("DescribeAccountAttributes" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "AttributeNames"
          =: toQuery
            (toQueryList "AttributeName" <$> _daaAttributeNames)
      ]

-- | /See:/ 'describeAccountAttributesResponse' smart constructor.
data DescribeAccountAttributesResponse = DescribeAccountAttributesResponse'
  { _daarrsAccountAttributes ::
      !( Maybe
           [AccountAttribute]
       ),
    _daarrsResponseStatus ::
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

-- | Creates a value of 'DescribeAccountAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daarrsAccountAttributes' - A list of attributes assigned to an account.
--
-- * 'daarrsResponseStatus' - -- | The response status code.
describeAccountAttributesResponse ::
  -- | 'daarrsResponseStatus'
  Int ->
  DescribeAccountAttributesResponse
describeAccountAttributesResponse pResponseStatus_ =
  DescribeAccountAttributesResponse'
    { _daarrsAccountAttributes =
        Nothing,
      _daarrsResponseStatus = pResponseStatus_
    }

-- | A list of attributes assigned to an account.
daarrsAccountAttributes :: Lens' DescribeAccountAttributesResponse [AccountAttribute]
daarrsAccountAttributes = lens _daarrsAccountAttributes (\s a -> s {_daarrsAccountAttributes = a}) . _Default . _Coerce

-- | -- | The response status code.
daarrsResponseStatus :: Lens' DescribeAccountAttributesResponse Int
daarrsResponseStatus = lens _daarrsResponseStatus (\s a -> s {_daarrsResponseStatus = a})

instance NFData DescribeAccountAttributesResponse
