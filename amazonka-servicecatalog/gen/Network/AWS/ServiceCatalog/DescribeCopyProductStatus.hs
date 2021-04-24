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
-- Module      : Network.AWS.ServiceCatalog.DescribeCopyProductStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status of the specified copy product operation.
module Network.AWS.ServiceCatalog.DescribeCopyProductStatus
  ( -- * Creating a Request
    describeCopyProductStatus,
    DescribeCopyProductStatus,

    -- * Request Lenses
    dcpsAcceptLanguage,
    dcpsCopyProductToken,

    -- * Destructuring the Response
    describeCopyProductStatusResponse,
    DescribeCopyProductStatusResponse,

    -- * Response Lenses
    dcpsrrsStatusDetail,
    dcpsrrsTargetProductId,
    dcpsrrsCopyProductStatus,
    dcpsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'describeCopyProductStatus' smart constructor.
data DescribeCopyProductStatus = DescribeCopyProductStatus'
  { _dcpsAcceptLanguage ::
      !(Maybe Text),
    _dcpsCopyProductToken ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCopyProductStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpsAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'dcpsCopyProductToken' - The token for the copy product operation. This token is returned by 'CopyProduct' .
describeCopyProductStatus ::
  -- | 'dcpsCopyProductToken'
  Text ->
  DescribeCopyProductStatus
describeCopyProductStatus pCopyProductToken_ =
  DescribeCopyProductStatus'
    { _dcpsAcceptLanguage =
        Nothing,
      _dcpsCopyProductToken = pCopyProductToken_
    }

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
dcpsAcceptLanguage :: Lens' DescribeCopyProductStatus (Maybe Text)
dcpsAcceptLanguage = lens _dcpsAcceptLanguage (\s a -> s {_dcpsAcceptLanguage = a})

-- | The token for the copy product operation. This token is returned by 'CopyProduct' .
dcpsCopyProductToken :: Lens' DescribeCopyProductStatus Text
dcpsCopyProductToken = lens _dcpsCopyProductToken (\s a -> s {_dcpsCopyProductToken = a})

instance AWSRequest DescribeCopyProductStatus where
  type
    Rs DescribeCopyProductStatus =
      DescribeCopyProductStatusResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          DescribeCopyProductStatusResponse'
            <$> (x .?> "StatusDetail")
            <*> (x .?> "TargetProductId")
            <*> (x .?> "CopyProductStatus")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCopyProductStatus

instance NFData DescribeCopyProductStatus

instance ToHeaders DescribeCopyProductStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DescribeCopyProductStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCopyProductStatus where
  toJSON DescribeCopyProductStatus' {..} =
    object
      ( catMaybes
          [ ("AcceptLanguage" .=) <$> _dcpsAcceptLanguage,
            Just ("CopyProductToken" .= _dcpsCopyProductToken)
          ]
      )

instance ToPath DescribeCopyProductStatus where
  toPath = const "/"

instance ToQuery DescribeCopyProductStatus where
  toQuery = const mempty

-- | /See:/ 'describeCopyProductStatusResponse' smart constructor.
data DescribeCopyProductStatusResponse = DescribeCopyProductStatusResponse'
  { _dcpsrrsStatusDetail ::
      !( Maybe
           Text
       ),
    _dcpsrrsTargetProductId ::
      !( Maybe
           Text
       ),
    _dcpsrrsCopyProductStatus ::
      !( Maybe
           CopyProductStatus
       ),
    _dcpsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeCopyProductStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpsrrsStatusDetail' - The status message.
--
-- * 'dcpsrrsTargetProductId' - The identifier of the copied product.
--
-- * 'dcpsrrsCopyProductStatus' - The status of the copy product operation.
--
-- * 'dcpsrrsResponseStatus' - -- | The response status code.
describeCopyProductStatusResponse ::
  -- | 'dcpsrrsResponseStatus'
  Int ->
  DescribeCopyProductStatusResponse
describeCopyProductStatusResponse pResponseStatus_ =
  DescribeCopyProductStatusResponse'
    { _dcpsrrsStatusDetail =
        Nothing,
      _dcpsrrsTargetProductId = Nothing,
      _dcpsrrsCopyProductStatus = Nothing,
      _dcpsrrsResponseStatus =
        pResponseStatus_
    }

-- | The status message.
dcpsrrsStatusDetail :: Lens' DescribeCopyProductStatusResponse (Maybe Text)
dcpsrrsStatusDetail = lens _dcpsrrsStatusDetail (\s a -> s {_dcpsrrsStatusDetail = a})

-- | The identifier of the copied product.
dcpsrrsTargetProductId :: Lens' DescribeCopyProductStatusResponse (Maybe Text)
dcpsrrsTargetProductId = lens _dcpsrrsTargetProductId (\s a -> s {_dcpsrrsTargetProductId = a})

-- | The status of the copy product operation.
dcpsrrsCopyProductStatus :: Lens' DescribeCopyProductStatusResponse (Maybe CopyProductStatus)
dcpsrrsCopyProductStatus = lens _dcpsrrsCopyProductStatus (\s a -> s {_dcpsrrsCopyProductStatus = a})

-- | -- | The response status code.
dcpsrrsResponseStatus :: Lens' DescribeCopyProductStatusResponse Int
dcpsrrsResponseStatus = lens _dcpsrrsResponseStatus (\s a -> s {_dcpsrrsResponseStatus = a})

instance NFData DescribeCopyProductStatusResponse
