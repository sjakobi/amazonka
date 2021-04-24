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
-- Module      : Network.AWS.IoT.DescribeAuditSuppression
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a Device Defender audit suppression.
module Network.AWS.IoT.DescribeAuditSuppression
  ( -- * Creating a Request
    describeAuditSuppression,
    DescribeAuditSuppression,

    -- * Request Lenses
    dCheckName,
    dResourceIdentifier,

    -- * Destructuring the Response
    describeAuditSuppressionResponse,
    DescribeAuditSuppressionResponse,

    -- * Response Lenses
    dasrarsExpirationDate,
    dasrarsResourceIdentifier,
    dasrarsCheckName,
    dasrarsDescription,
    dasrarsSuppressIndefinitely,
    dasrarsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAuditSuppression' smart constructor.
data DescribeAuditSuppression = DescribeAuditSuppression'
  { _dCheckName ::
      !Text,
    _dResourceIdentifier ::
      !ResourceIdentifier
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAuditSuppression' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dCheckName' - Undocumented member.
--
-- * 'dResourceIdentifier' - Undocumented member.
describeAuditSuppression ::
  -- | 'dCheckName'
  Text ->
  -- | 'dResourceIdentifier'
  ResourceIdentifier ->
  DescribeAuditSuppression
describeAuditSuppression
  pCheckName_
  pResourceIdentifier_ =
    DescribeAuditSuppression'
      { _dCheckName =
          pCheckName_,
        _dResourceIdentifier = pResourceIdentifier_
      }

-- | Undocumented member.
dCheckName :: Lens' DescribeAuditSuppression Text
dCheckName = lens _dCheckName (\s a -> s {_dCheckName = a})

-- | Undocumented member.
dResourceIdentifier :: Lens' DescribeAuditSuppression ResourceIdentifier
dResourceIdentifier = lens _dResourceIdentifier (\s a -> s {_dResourceIdentifier = a})

instance AWSRequest DescribeAuditSuppression where
  type
    Rs DescribeAuditSuppression =
      DescribeAuditSuppressionResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeAuditSuppressionResponse'
            <$> (x .?> "expirationDate")
            <*> (x .?> "resourceIdentifier")
            <*> (x .?> "checkName")
            <*> (x .?> "description")
            <*> (x .?> "suppressIndefinitely")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAuditSuppression

instance NFData DescribeAuditSuppression

instance ToHeaders DescribeAuditSuppression where
  toHeaders = const mempty

instance ToJSON DescribeAuditSuppression where
  toJSON DescribeAuditSuppression' {..} =
    object
      ( catMaybes
          [ Just ("checkName" .= _dCheckName),
            Just ("resourceIdentifier" .= _dResourceIdentifier)
          ]
      )

instance ToPath DescribeAuditSuppression where
  toPath = const "/audit/suppressions/describe"

instance ToQuery DescribeAuditSuppression where
  toQuery = const mempty

-- | /See:/ 'describeAuditSuppressionResponse' smart constructor.
data DescribeAuditSuppressionResponse = DescribeAuditSuppressionResponse'
  { _dasrarsExpirationDate ::
      !( Maybe
           POSIX
       ),
    _dasrarsResourceIdentifier ::
      !( Maybe
           ResourceIdentifier
       ),
    _dasrarsCheckName ::
      !( Maybe
           Text
       ),
    _dasrarsDescription ::
      !( Maybe
           Text
       ),
    _dasrarsSuppressIndefinitely ::
      !( Maybe
           Bool
       ),
    _dasrarsResponseStatus ::
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

-- | Creates a value of 'DescribeAuditSuppressionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dasrarsExpirationDate' - The epoch timestamp in seconds at which this suppression expires.
--
-- * 'dasrarsResourceIdentifier' - Undocumented member.
--
-- * 'dasrarsCheckName' - Undocumented member.
--
-- * 'dasrarsDescription' - The description of the audit suppression.
--
-- * 'dasrarsSuppressIndefinitely' - Indicates whether a suppression should exist indefinitely or not.
--
-- * 'dasrarsResponseStatus' - -- | The response status code.
describeAuditSuppressionResponse ::
  -- | 'dasrarsResponseStatus'
  Int ->
  DescribeAuditSuppressionResponse
describeAuditSuppressionResponse pResponseStatus_ =
  DescribeAuditSuppressionResponse'
    { _dasrarsExpirationDate =
        Nothing,
      _dasrarsResourceIdentifier = Nothing,
      _dasrarsCheckName = Nothing,
      _dasrarsDescription = Nothing,
      _dasrarsSuppressIndefinitely = Nothing,
      _dasrarsResponseStatus = pResponseStatus_
    }

-- | The epoch timestamp in seconds at which this suppression expires.
dasrarsExpirationDate :: Lens' DescribeAuditSuppressionResponse (Maybe UTCTime)
dasrarsExpirationDate = lens _dasrarsExpirationDate (\s a -> s {_dasrarsExpirationDate = a}) . mapping _Time

-- | Undocumented member.
dasrarsResourceIdentifier :: Lens' DescribeAuditSuppressionResponse (Maybe ResourceIdentifier)
dasrarsResourceIdentifier = lens _dasrarsResourceIdentifier (\s a -> s {_dasrarsResourceIdentifier = a})

-- | Undocumented member.
dasrarsCheckName :: Lens' DescribeAuditSuppressionResponse (Maybe Text)
dasrarsCheckName = lens _dasrarsCheckName (\s a -> s {_dasrarsCheckName = a})

-- | The description of the audit suppression.
dasrarsDescription :: Lens' DescribeAuditSuppressionResponse (Maybe Text)
dasrarsDescription = lens _dasrarsDescription (\s a -> s {_dasrarsDescription = a})

-- | Indicates whether a suppression should exist indefinitely or not.
dasrarsSuppressIndefinitely :: Lens' DescribeAuditSuppressionResponse (Maybe Bool)
dasrarsSuppressIndefinitely = lens _dasrarsSuppressIndefinitely (\s a -> s {_dasrarsSuppressIndefinitely = a})

-- | -- | The response status code.
dasrarsResponseStatus :: Lens' DescribeAuditSuppressionResponse Int
dasrarsResponseStatus = lens _dasrarsResponseStatus (\s a -> s {_dasrarsResponseStatus = a})

instance NFData DescribeAuditSuppressionResponse
