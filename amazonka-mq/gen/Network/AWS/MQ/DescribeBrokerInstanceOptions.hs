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
-- Module      : Network.AWS.MQ.DescribeBrokerInstanceOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe available broker instance options.
module Network.AWS.MQ.DescribeBrokerInstanceOptions
  ( -- * Creating a Request
    describeBrokerInstanceOptions,
    DescribeBrokerInstanceOptions,

    -- * Request Lenses
    dbioNextToken,
    dbioStorageType,
    dbioEngineType,
    dbioMaxResults,
    dbioHostInstanceType,

    -- * Destructuring the Response
    describeBrokerInstanceOptionsResponse,
    DescribeBrokerInstanceOptionsResponse,

    -- * Response Lenses
    dbiorrsNextToken,
    dbiorrsMaxResults,
    dbiorrsBrokerInstanceOptions,
    dbiorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeBrokerInstanceOptions' smart constructor.
data DescribeBrokerInstanceOptions = DescribeBrokerInstanceOptions'
  { _dbioNextToken ::
      !( Maybe
           Text
       ),
    _dbioStorageType ::
      !( Maybe
           Text
       ),
    _dbioEngineType ::
      !( Maybe
           Text
       ),
    _dbioMaxResults ::
      !( Maybe
           Nat
       ),
    _dbioHostInstanceType ::
      !( Maybe
           Text
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

-- | Creates a value of 'DescribeBrokerInstanceOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbioNextToken' - The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
--
-- * 'dbioStorageType' - Filter response by storage type.
--
-- * 'dbioEngineType' - Filter response by engine type.
--
-- * 'dbioMaxResults' - The maximum number of instance options that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
--
-- * 'dbioHostInstanceType' - Filter response by host instance type.
describeBrokerInstanceOptions ::
  DescribeBrokerInstanceOptions
describeBrokerInstanceOptions =
  DescribeBrokerInstanceOptions'
    { _dbioNextToken =
        Nothing,
      _dbioStorageType = Nothing,
      _dbioEngineType = Nothing,
      _dbioMaxResults = Nothing,
      _dbioHostInstanceType = Nothing
    }

-- | The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
dbioNextToken :: Lens' DescribeBrokerInstanceOptions (Maybe Text)
dbioNextToken = lens _dbioNextToken (\s a -> s {_dbioNextToken = a})

-- | Filter response by storage type.
dbioStorageType :: Lens' DescribeBrokerInstanceOptions (Maybe Text)
dbioStorageType = lens _dbioStorageType (\s a -> s {_dbioStorageType = a})

-- | Filter response by engine type.
dbioEngineType :: Lens' DescribeBrokerInstanceOptions (Maybe Text)
dbioEngineType = lens _dbioEngineType (\s a -> s {_dbioEngineType = a})

-- | The maximum number of instance options that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
dbioMaxResults :: Lens' DescribeBrokerInstanceOptions (Maybe Natural)
dbioMaxResults = lens _dbioMaxResults (\s a -> s {_dbioMaxResults = a}) . mapping _Nat

-- | Filter response by host instance type.
dbioHostInstanceType :: Lens' DescribeBrokerInstanceOptions (Maybe Text)
dbioHostInstanceType = lens _dbioHostInstanceType (\s a -> s {_dbioHostInstanceType = a})

instance AWSRequest DescribeBrokerInstanceOptions where
  type
    Rs DescribeBrokerInstanceOptions =
      DescribeBrokerInstanceOptionsResponse
  request = get mq
  response =
    receiveJSON
      ( \s h x ->
          DescribeBrokerInstanceOptionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "maxResults")
            <*> (x .?> "brokerInstanceOptions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeBrokerInstanceOptions

instance NFData DescribeBrokerInstanceOptions

instance ToHeaders DescribeBrokerInstanceOptions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeBrokerInstanceOptions where
  toPath = const "/v1/broker-instance-options"

instance ToQuery DescribeBrokerInstanceOptions where
  toQuery DescribeBrokerInstanceOptions' {..} =
    mconcat
      [ "nextToken" =: _dbioNextToken,
        "storageType" =: _dbioStorageType,
        "engineType" =: _dbioEngineType,
        "maxResults" =: _dbioMaxResults,
        "hostInstanceType" =: _dbioHostInstanceType
      ]

-- | /See:/ 'describeBrokerInstanceOptionsResponse' smart constructor.
data DescribeBrokerInstanceOptionsResponse = DescribeBrokerInstanceOptionsResponse'
  { _dbiorrsNextToken ::
      !( Maybe
           Text
       ),
    _dbiorrsMaxResults ::
      !( Maybe
           Nat
       ),
    _dbiorrsBrokerInstanceOptions ::
      !( Maybe
           [BrokerInstanceOption]
       ),
    _dbiorrsResponseStatus ::
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

-- | Creates a value of 'DescribeBrokerInstanceOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbiorrsNextToken' - The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
--
-- * 'dbiorrsMaxResults' - Required. The maximum number of instance options that can be returned per page (20 by default). This value must be an integer from 5 to 100.
--
-- * 'dbiorrsBrokerInstanceOptions' - List of available broker instance options.
--
-- * 'dbiorrsResponseStatus' - -- | The response status code.
describeBrokerInstanceOptionsResponse ::
  -- | 'dbiorrsResponseStatus'
  Int ->
  DescribeBrokerInstanceOptionsResponse
describeBrokerInstanceOptionsResponse
  pResponseStatus_ =
    DescribeBrokerInstanceOptionsResponse'
      { _dbiorrsNextToken =
          Nothing,
        _dbiorrsMaxResults = Nothing,
        _dbiorrsBrokerInstanceOptions =
          Nothing,
        _dbiorrsResponseStatus =
          pResponseStatus_
      }

-- | The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
dbiorrsNextToken :: Lens' DescribeBrokerInstanceOptionsResponse (Maybe Text)
dbiorrsNextToken = lens _dbiorrsNextToken (\s a -> s {_dbiorrsNextToken = a})

-- | Required. The maximum number of instance options that can be returned per page (20 by default). This value must be an integer from 5 to 100.
dbiorrsMaxResults :: Lens' DescribeBrokerInstanceOptionsResponse (Maybe Natural)
dbiorrsMaxResults = lens _dbiorrsMaxResults (\s a -> s {_dbiorrsMaxResults = a}) . mapping _Nat

-- | List of available broker instance options.
dbiorrsBrokerInstanceOptions :: Lens' DescribeBrokerInstanceOptionsResponse [BrokerInstanceOption]
dbiorrsBrokerInstanceOptions = lens _dbiorrsBrokerInstanceOptions (\s a -> s {_dbiorrsBrokerInstanceOptions = a}) . _Default . _Coerce

-- | -- | The response status code.
dbiorrsResponseStatus :: Lens' DescribeBrokerInstanceOptionsResponse Int
dbiorrsResponseStatus = lens _dbiorrsResponseStatus (\s a -> s {_dbiorrsResponseStatus = a})

instance NFData DescribeBrokerInstanceOptionsResponse
