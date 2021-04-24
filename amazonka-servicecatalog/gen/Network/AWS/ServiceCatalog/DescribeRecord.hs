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
-- Module      : Network.AWS.ServiceCatalog.DescribeRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the specified request operation.
--
--
-- Use this operation after calling a request operation (for example, 'ProvisionProduct' , 'TerminateProvisionedProduct' , or 'UpdateProvisionedProduct' ).
module Network.AWS.ServiceCatalog.DescribeRecord
  ( -- * Creating a Request
    describeRecord,
    DescribeRecord,

    -- * Request Lenses
    drPageSize,
    drPageToken,
    drAcceptLanguage,
    drId,

    -- * Destructuring the Response
    describeRecordResponse,
    DescribeRecordResponse,

    -- * Response Lenses
    drrrsRecordDetail,
    drrrsRecordOutputs,
    drrrsNextPageToken,
    drrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'describeRecord' smart constructor.
data DescribeRecord = DescribeRecord'
  { _drPageSize ::
      !(Maybe Nat),
    _drPageToken :: !(Maybe Text),
    _drAcceptLanguage :: !(Maybe Text),
    _drId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeRecord' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drPageSize' - The maximum number of items to return with this call.
--
-- * 'drPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'drAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'drId' - The record identifier of the provisioned product. This identifier is returned by the request operation.
describeRecord ::
  -- | 'drId'
  Text ->
  DescribeRecord
describeRecord pId_ =
  DescribeRecord'
    { _drPageSize = Nothing,
      _drPageToken = Nothing,
      _drAcceptLanguage = Nothing,
      _drId = pId_
    }

-- | The maximum number of items to return with this call.
drPageSize :: Lens' DescribeRecord (Maybe Natural)
drPageSize = lens _drPageSize (\s a -> s {_drPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
drPageToken :: Lens' DescribeRecord (Maybe Text)
drPageToken = lens _drPageToken (\s a -> s {_drPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
drAcceptLanguage :: Lens' DescribeRecord (Maybe Text)
drAcceptLanguage = lens _drAcceptLanguage (\s a -> s {_drAcceptLanguage = a})

-- | The record identifier of the provisioned product. This identifier is returned by the request operation.
drId :: Lens' DescribeRecord Text
drId = lens _drId (\s a -> s {_drId = a})

instance AWSRequest DescribeRecord where
  type Rs DescribeRecord = DescribeRecordResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          DescribeRecordResponse'
            <$> (x .?> "RecordDetail")
            <*> (x .?> "RecordOutputs" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRecord

instance NFData DescribeRecord

instance ToHeaders DescribeRecord where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DescribeRecord" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeRecord where
  toJSON DescribeRecord' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _drPageSize,
            ("PageToken" .=) <$> _drPageToken,
            ("AcceptLanguage" .=) <$> _drAcceptLanguage,
            Just ("Id" .= _drId)
          ]
      )

instance ToPath DescribeRecord where
  toPath = const "/"

instance ToQuery DescribeRecord where
  toQuery = const mempty

-- | /See:/ 'describeRecordResponse' smart constructor.
data DescribeRecordResponse = DescribeRecordResponse'
  { _drrrsRecordDetail ::
      !(Maybe RecordDetail),
    _drrrsRecordOutputs ::
      !(Maybe [RecordOutput]),
    _drrrsNextPageToken ::
      !(Maybe Text),
    _drrrsResponseStatus ::
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

-- | Creates a value of 'DescribeRecordResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrsRecordDetail' - Information about the product.
--
-- * 'drrrsRecordOutputs' - Information about the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.
--
-- * 'drrrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'drrrsResponseStatus' - -- | The response status code.
describeRecordResponse ::
  -- | 'drrrsResponseStatus'
  Int ->
  DescribeRecordResponse
describeRecordResponse pResponseStatus_ =
  DescribeRecordResponse'
    { _drrrsRecordDetail =
        Nothing,
      _drrrsRecordOutputs = Nothing,
      _drrrsNextPageToken = Nothing,
      _drrrsResponseStatus = pResponseStatus_
    }

-- | Information about the product.
drrrsRecordDetail :: Lens' DescribeRecordResponse (Maybe RecordDetail)
drrrsRecordDetail = lens _drrrsRecordDetail (\s a -> s {_drrrsRecordDetail = a})

-- | Information about the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.
drrrsRecordOutputs :: Lens' DescribeRecordResponse [RecordOutput]
drrrsRecordOutputs = lens _drrrsRecordOutputs (\s a -> s {_drrrsRecordOutputs = a}) . _Default . _Coerce

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
drrrsNextPageToken :: Lens' DescribeRecordResponse (Maybe Text)
drrrsNextPageToken = lens _drrrsNextPageToken (\s a -> s {_drrrsNextPageToken = a})

-- | -- | The response status code.
drrrsResponseStatus :: Lens' DescribeRecordResponse Int
drrrsResponseStatus = lens _drrrsResponseStatus (\s a -> s {_drrrsResponseStatus = a})

instance NFData DescribeRecordResponse
