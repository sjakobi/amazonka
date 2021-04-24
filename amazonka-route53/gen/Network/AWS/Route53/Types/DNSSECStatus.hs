{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.DNSSECStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.DNSSECStatus where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

-- | A string repesenting the status of DNSSEC signing.
--
--
--
-- /See:/ 'dnsSECStatus' smart constructor.
data DNSSECStatus = DNSSECStatus'
  { _dsecsStatusMessage ::
      !(Maybe Text),
    _dsecsServeSignature :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DNSSECStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsecsStatusMessage' - The status message provided for the following DNSSEC signing status: @INTERNAL_FAILURE@ . The status message includes information about what the problem might be and steps that you can take to correct the issue.
--
-- * 'dsecsServeSignature' - A string that represents the current hosted zone signing status. Status can have one of the following values:     * SIGNING    * DNSSEC signing is enabled for the hosted zone.     * NOT_SIGNING    * DNSSEC signing is not enabled for the hosted zone.     * DELETING    * DNSSEC signing is in the process of being removed for the hosted zone.     * ACTION_NEEDED    * There is a problem with signing in the hosted zone that requires you to take action to resolve. For example, the customer managed customer master key (CMK) might have been deleted, or the permissions for the customer managed CMK might have been changed.     * INTERNAL_FAILURE    * There was an error during a request. Before you can continue to work with DNSSEC signing, including with key-signing keys (KSKs), you must correct the problem by enabling or disabling DNSSEC signing for the hosted zone.
dnsSECStatus ::
  DNSSECStatus
dnsSECStatus =
  DNSSECStatus'
    { _dsecsStatusMessage = Nothing,
      _dsecsServeSignature = Nothing
    }

-- | The status message provided for the following DNSSEC signing status: @INTERNAL_FAILURE@ . The status message includes information about what the problem might be and steps that you can take to correct the issue.
dsecsStatusMessage :: Lens' DNSSECStatus (Maybe Text)
dsecsStatusMessage = lens _dsecsStatusMessage (\s a -> s {_dsecsStatusMessage = a})

-- | A string that represents the current hosted zone signing status. Status can have one of the following values:     * SIGNING    * DNSSEC signing is enabled for the hosted zone.     * NOT_SIGNING    * DNSSEC signing is not enabled for the hosted zone.     * DELETING    * DNSSEC signing is in the process of being removed for the hosted zone.     * ACTION_NEEDED    * There is a problem with signing in the hosted zone that requires you to take action to resolve. For example, the customer managed customer master key (CMK) might have been deleted, or the permissions for the customer managed CMK might have been changed.     * INTERNAL_FAILURE    * There was an error during a request. Before you can continue to work with DNSSEC signing, including with key-signing keys (KSKs), you must correct the problem by enabling or disabling DNSSEC signing for the hosted zone.
dsecsServeSignature :: Lens' DNSSECStatus (Maybe Text)
dsecsServeSignature = lens _dsecsServeSignature (\s a -> s {_dsecsServeSignature = a})

instance FromXML DNSSECStatus where
  parseXML x =
    DNSSECStatus'
      <$> (x .@? "StatusMessage") <*> (x .@? "ServeSignature")

instance Hashable DNSSECStatus

instance NFData DNSSECStatus
