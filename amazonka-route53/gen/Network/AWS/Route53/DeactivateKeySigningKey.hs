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
-- Module      : Network.AWS.Route53.DeactivateKeySigningKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deactivates a key-signing key (KSK) so that it will not be used for signing by DNSSEC. This operation changes the KSK status to @INACTIVE@ .
module Network.AWS.Route53.DeactivateKeySigningKey
  ( -- * Creating a Request
    deactivateKeySigningKey,
    DeactivateKeySigningKey,

    -- * Request Lenses
    dkskHostedZoneId,
    dkskName,

    -- * Destructuring the Response
    deactivateKeySigningKeyResponse,
    DeactivateKeySigningKeyResponse,

    -- * Response Lenses
    drsResponseStatus,
    drsChangeInfo,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | /See:/ 'deactivateKeySigningKey' smart constructor.
data DeactivateKeySigningKey = DeactivateKeySigningKey'
  { _dkskHostedZoneId ::
      !ResourceId,
    _dkskName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeactivateKeySigningKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkskHostedZoneId' - A unique string used to identify a hosted zone.
--
-- * 'dkskName' - A string used to identify a key-signing key (KSK).
deactivateKeySigningKey ::
  -- | 'dkskHostedZoneId'
  ResourceId ->
  -- | 'dkskName'
  Text ->
  DeactivateKeySigningKey
deactivateKeySigningKey pHostedZoneId_ pName_ =
  DeactivateKeySigningKey'
    { _dkskHostedZoneId =
        pHostedZoneId_,
      _dkskName = pName_
    }

-- | A unique string used to identify a hosted zone.
dkskHostedZoneId :: Lens' DeactivateKeySigningKey ResourceId
dkskHostedZoneId = lens _dkskHostedZoneId (\s a -> s {_dkskHostedZoneId = a})

-- | A string used to identify a key-signing key (KSK).
dkskName :: Lens' DeactivateKeySigningKey Text
dkskName = lens _dkskName (\s a -> s {_dkskName = a})

instance AWSRequest DeactivateKeySigningKey where
  type
    Rs DeactivateKeySigningKey =
      DeactivateKeySigningKeyResponse
  request = post route53
  response =
    receiveXML
      ( \s h x ->
          DeactivateKeySigningKeyResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "ChangeInfo")
      )

instance Hashable DeactivateKeySigningKey

instance NFData DeactivateKeySigningKey

instance ToHeaders DeactivateKeySigningKey where
  toHeaders = const mempty

instance ToPath DeactivateKeySigningKey where
  toPath DeactivateKeySigningKey' {..} =
    mconcat
      [ "/2013-04-01/keysigningkey/",
        toBS _dkskHostedZoneId,
        "/",
        toBS _dkskName,
        "/deactivate"
      ]

instance ToQuery DeactivateKeySigningKey where
  toQuery = const mempty

-- | /See:/ 'deactivateKeySigningKeyResponse' smart constructor.
data DeactivateKeySigningKeyResponse = DeactivateKeySigningKeyResponse'
  { _drsResponseStatus ::
      !Int,
    _drsChangeInfo ::
      !ChangeInfo
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeactivateKeySigningKeyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsResponseStatus' - -- | The response status code.
--
-- * 'drsChangeInfo' - Undocumented member.
deactivateKeySigningKeyResponse ::
  -- | 'drsResponseStatus'
  Int ->
  -- | 'drsChangeInfo'
  ChangeInfo ->
  DeactivateKeySigningKeyResponse
deactivateKeySigningKeyResponse
  pResponseStatus_
  pChangeInfo_ =
    DeactivateKeySigningKeyResponse'
      { _drsResponseStatus =
          pResponseStatus_,
        _drsChangeInfo = pChangeInfo_
      }

-- | -- | The response status code.
drsResponseStatus :: Lens' DeactivateKeySigningKeyResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

-- | Undocumented member.
drsChangeInfo :: Lens' DeactivateKeySigningKeyResponse ChangeInfo
drsChangeInfo = lens _drsChangeInfo (\s a -> s {_drsChangeInfo = a})

instance NFData DeactivateKeySigningKeyResponse
