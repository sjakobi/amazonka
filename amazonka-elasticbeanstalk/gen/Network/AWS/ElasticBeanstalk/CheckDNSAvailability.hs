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
-- Module      : Network.AWS.ElasticBeanstalk.CheckDNSAvailability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks if the specified CNAME is available.
module Network.AWS.ElasticBeanstalk.CheckDNSAvailability
  ( -- * Creating a Request
    checkDNSAvailability,
    CheckDNSAvailability,

    -- * Request Lenses
    cdaCNAMEPrefix,

    -- * Destructuring the Response
    checkDNSAvailabilityResponse,
    CheckDNSAvailabilityResponse,

    -- * Response Lenses
    cdarrsAvailable,
    cdarrsFullyQualifiedCNAME,
    cdarrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Results message indicating whether a CNAME is available.
--
--
--
-- /See:/ 'checkDNSAvailability' smart constructor.
newtype CheckDNSAvailability = CheckDNSAvailability'
  { _cdaCNAMEPrefix ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CheckDNSAvailability' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdaCNAMEPrefix' - The prefix used when this CNAME is reserved.
checkDNSAvailability ::
  -- | 'cdaCNAMEPrefix'
  Text ->
  CheckDNSAvailability
checkDNSAvailability pCNAMEPrefix_ =
  CheckDNSAvailability'
    { _cdaCNAMEPrefix =
        pCNAMEPrefix_
    }

-- | The prefix used when this CNAME is reserved.
cdaCNAMEPrefix :: Lens' CheckDNSAvailability Text
cdaCNAMEPrefix = lens _cdaCNAMEPrefix (\s a -> s {_cdaCNAMEPrefix = a})

instance AWSRequest CheckDNSAvailability where
  type
    Rs CheckDNSAvailability =
      CheckDNSAvailabilityResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "CheckDNSAvailabilityResult"
      ( \s h x ->
          CheckDNSAvailabilityResponse'
            <$> (x .@? "Available")
            <*> (x .@? "FullyQualifiedCNAME")
            <*> (pure (fromEnum s))
      )

instance Hashable CheckDNSAvailability

instance NFData CheckDNSAvailability

instance ToHeaders CheckDNSAvailability where
  toHeaders = const mempty

instance ToPath CheckDNSAvailability where
  toPath = const "/"

instance ToQuery CheckDNSAvailability where
  toQuery CheckDNSAvailability' {..} =
    mconcat
      [ "Action" =: ("CheckDNSAvailability" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "CNAMEPrefix" =: _cdaCNAMEPrefix
      ]

-- | Indicates if the specified CNAME is available.
--
--
--
-- /See:/ 'checkDNSAvailabilityResponse' smart constructor.
data CheckDNSAvailabilityResponse = CheckDNSAvailabilityResponse'
  { _cdarrsAvailable ::
      !(Maybe Bool),
    _cdarrsFullyQualifiedCNAME ::
      !(Maybe Text),
    _cdarrsResponseStatus ::
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

-- | Creates a value of 'CheckDNSAvailabilityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdarrsAvailable' - Indicates if the specified CNAME is available:     * @true@ : The CNAME is available.     * @false@ : The CNAME is not available.
--
-- * 'cdarrsFullyQualifiedCNAME' - The fully qualified CNAME to reserve when 'CreateEnvironment' is called with the provided prefix.
--
-- * 'cdarrsResponseStatus' - -- | The response status code.
checkDNSAvailabilityResponse ::
  -- | 'cdarrsResponseStatus'
  Int ->
  CheckDNSAvailabilityResponse
checkDNSAvailabilityResponse pResponseStatus_ =
  CheckDNSAvailabilityResponse'
    { _cdarrsAvailable =
        Nothing,
      _cdarrsFullyQualifiedCNAME = Nothing,
      _cdarrsResponseStatus = pResponseStatus_
    }

-- | Indicates if the specified CNAME is available:     * @true@ : The CNAME is available.     * @false@ : The CNAME is not available.
cdarrsAvailable :: Lens' CheckDNSAvailabilityResponse (Maybe Bool)
cdarrsAvailable = lens _cdarrsAvailable (\s a -> s {_cdarrsAvailable = a})

-- | The fully qualified CNAME to reserve when 'CreateEnvironment' is called with the provided prefix.
cdarrsFullyQualifiedCNAME :: Lens' CheckDNSAvailabilityResponse (Maybe Text)
cdarrsFullyQualifiedCNAME = lens _cdarrsFullyQualifiedCNAME (\s a -> s {_cdarrsFullyQualifiedCNAME = a})

-- | -- | The response status code.
cdarrsResponseStatus :: Lens' CheckDNSAvailabilityResponse Int
cdarrsResponseStatus = lens _cdarrsResponseStatus (\s a -> s {_cdarrsResponseStatus = a})

instance NFData CheckDNSAvailabilityResponse
