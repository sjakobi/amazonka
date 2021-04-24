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
-- Module      : Network.AWS.OpsWorksCM.DescribeAccountAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes your OpsWorks-CM account attributes.
--
--
-- This operation is synchronous.
module Network.AWS.OpsWorksCM.DescribeAccountAttributes
  ( -- * Creating a Request
    describeAccountAttributes,
    DescribeAccountAttributes,

    -- * Destructuring the Response
    describeAccountAttributesResponse,
    DescribeAccountAttributesResponse,

    -- * Response Lenses
    daarrsAttributes,
    daarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorksCM.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAccountAttributes' smart constructor.
data DescribeAccountAttributes = DescribeAccountAttributes'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAccountAttributes' with the minimum fields required to make a request.
describeAccountAttributes ::
  DescribeAccountAttributes
describeAccountAttributes =
  DescribeAccountAttributes'

instance AWSRequest DescribeAccountAttributes where
  type
    Rs DescribeAccountAttributes =
      DescribeAccountAttributesResponse
  request = postJSON opsWorksCM
  response =
    receiveJSON
      ( \s h x ->
          DescribeAccountAttributesResponse'
            <$> (x .?> "Attributes" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAccountAttributes

instance NFData DescribeAccountAttributes

instance ToHeaders DescribeAccountAttributes where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorksCM_V2016_11_01.DescribeAccountAttributes" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAccountAttributes where
  toJSON = const (Object mempty)

instance ToPath DescribeAccountAttributes where
  toPath = const "/"

instance ToQuery DescribeAccountAttributes where
  toQuery = const mempty

-- | /See:/ 'describeAccountAttributesResponse' smart constructor.
data DescribeAccountAttributesResponse = DescribeAccountAttributesResponse'
  { _daarrsAttributes ::
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
-- * 'daarrsAttributes' - The attributes that are currently set for the account.
--
-- * 'daarrsResponseStatus' - -- | The response status code.
describeAccountAttributesResponse ::
  -- | 'daarrsResponseStatus'
  Int ->
  DescribeAccountAttributesResponse
describeAccountAttributesResponse pResponseStatus_ =
  DescribeAccountAttributesResponse'
    { _daarrsAttributes =
        Nothing,
      _daarrsResponseStatus = pResponseStatus_
    }

-- | The attributes that are currently set for the account.
daarrsAttributes :: Lens' DescribeAccountAttributesResponse [AccountAttribute]
daarrsAttributes = lens _daarrsAttributes (\s a -> s {_daarrsAttributes = a}) . _Default . _Coerce

-- | -- | The response status code.
daarrsResponseStatus :: Lens' DescribeAccountAttributesResponse Int
daarrsResponseStatus = lens _daarrsResponseStatus (\s a -> s {_daarrsResponseStatus = a})

instance NFData DescribeAccountAttributesResponse
