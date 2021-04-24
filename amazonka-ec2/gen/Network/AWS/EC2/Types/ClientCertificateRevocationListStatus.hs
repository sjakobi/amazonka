{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientCertificateRevocationListStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientCertificateRevocationListStatus where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ClientCertificateRevocationListStatusCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the state of a client certificate revocation list.
--
--
--
-- /See:/ 'clientCertificateRevocationListStatus' smart constructor.
data ClientCertificateRevocationListStatus = ClientCertificateRevocationListStatus'
  { _ccrlsMessage ::
      !( Maybe
           Text
       ),
    _ccrlsCode ::
      !( Maybe
           ClientCertificateRevocationListStatusCode
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

-- | Creates a value of 'ClientCertificateRevocationListStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrlsMessage' - A message about the status of the client certificate revocation list, if applicable.
--
-- * 'ccrlsCode' - The state of the client certificate revocation list.
clientCertificateRevocationListStatus ::
  ClientCertificateRevocationListStatus
clientCertificateRevocationListStatus =
  ClientCertificateRevocationListStatus'
    { _ccrlsMessage =
        Nothing,
      _ccrlsCode = Nothing
    }

-- | A message about the status of the client certificate revocation list, if applicable.
ccrlsMessage :: Lens' ClientCertificateRevocationListStatus (Maybe Text)
ccrlsMessage = lens _ccrlsMessage (\s a -> s {_ccrlsMessage = a})

-- | The state of the client certificate revocation list.
ccrlsCode :: Lens' ClientCertificateRevocationListStatus (Maybe ClientCertificateRevocationListStatusCode)
ccrlsCode = lens _ccrlsCode (\s a -> s {_ccrlsCode = a})

instance
  FromXML
    ClientCertificateRevocationListStatus
  where
  parseXML x =
    ClientCertificateRevocationListStatus'
      <$> (x .@? "message") <*> (x .@? "code")

instance
  Hashable
    ClientCertificateRevocationListStatus

instance NFData ClientCertificateRevocationListStatus
