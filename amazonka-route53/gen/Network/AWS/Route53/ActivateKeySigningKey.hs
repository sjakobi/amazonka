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
-- Module      : Network.AWS.Route53.ActivateKeySigningKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activates a key-signing key (KSK) so that it can be used for signing by DNSSEC. This operation changes the KSK status to @ACTIVE@ .
module Network.AWS.Route53.ActivateKeySigningKey
  ( -- * Creating a Request
    activateKeySigningKey,
    ActivateKeySigningKey,

    -- * Request Lenses
    akskHostedZoneId,
    akskName,

    -- * Destructuring the Response
    activateKeySigningKeyResponse,
    ActivateKeySigningKeyResponse,

    -- * Response Lenses
    akskrrsResponseStatus,
    akskrrsChangeInfo,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | /See:/ 'activateKeySigningKey' smart constructor.
data ActivateKeySigningKey = ActivateKeySigningKey'
  { _akskHostedZoneId ::
      !ResourceId,
    _akskName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ActivateKeySigningKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'akskHostedZoneId' - A unique string used to identify a hosted zone.
--
-- * 'akskName' - A string used to identify a key-signing key (KSK). @Name@ can include numbers, letters, and underscores (_). @Name@ must be unique for each key-signing key in the same hosted zone.
activateKeySigningKey ::
  -- | 'akskHostedZoneId'
  ResourceId ->
  -- | 'akskName'
  Text ->
  ActivateKeySigningKey
activateKeySigningKey pHostedZoneId_ pName_ =
  ActivateKeySigningKey'
    { _akskHostedZoneId =
        pHostedZoneId_,
      _akskName = pName_
    }

-- | A unique string used to identify a hosted zone.
akskHostedZoneId :: Lens' ActivateKeySigningKey ResourceId
akskHostedZoneId = lens _akskHostedZoneId (\s a -> s {_akskHostedZoneId = a})

-- | A string used to identify a key-signing key (KSK). @Name@ can include numbers, letters, and underscores (_). @Name@ must be unique for each key-signing key in the same hosted zone.
akskName :: Lens' ActivateKeySigningKey Text
akskName = lens _akskName (\s a -> s {_akskName = a})

instance AWSRequest ActivateKeySigningKey where
  type
    Rs ActivateKeySigningKey =
      ActivateKeySigningKeyResponse
  request = post route53
  response =
    receiveXML
      ( \s h x ->
          ActivateKeySigningKeyResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "ChangeInfo")
      )

instance Hashable ActivateKeySigningKey

instance NFData ActivateKeySigningKey

instance ToHeaders ActivateKeySigningKey where
  toHeaders = const mempty

instance ToPath ActivateKeySigningKey where
  toPath ActivateKeySigningKey' {..} =
    mconcat
      [ "/2013-04-01/keysigningkey/",
        toBS _akskHostedZoneId,
        "/",
        toBS _akskName,
        "/activate"
      ]

instance ToQuery ActivateKeySigningKey where
  toQuery = const mempty

-- | /See:/ 'activateKeySigningKeyResponse' smart constructor.
data ActivateKeySigningKeyResponse = ActivateKeySigningKeyResponse'
  { _akskrrsResponseStatus ::
      !Int,
    _akskrrsChangeInfo ::
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

-- | Creates a value of 'ActivateKeySigningKeyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'akskrrsResponseStatus' - -- | The response status code.
--
-- * 'akskrrsChangeInfo' - Undocumented member.
activateKeySigningKeyResponse ::
  -- | 'akskrrsResponseStatus'
  Int ->
  -- | 'akskrrsChangeInfo'
  ChangeInfo ->
  ActivateKeySigningKeyResponse
activateKeySigningKeyResponse
  pResponseStatus_
  pChangeInfo_ =
    ActivateKeySigningKeyResponse'
      { _akskrrsResponseStatus =
          pResponseStatus_,
        _akskrrsChangeInfo = pChangeInfo_
      }

-- | -- | The response status code.
akskrrsResponseStatus :: Lens' ActivateKeySigningKeyResponse Int
akskrrsResponseStatus = lens _akskrrsResponseStatus (\s a -> s {_akskrrsResponseStatus = a})

-- | Undocumented member.
akskrrsChangeInfo :: Lens' ActivateKeySigningKeyResponse ChangeInfo
akskrrsChangeInfo = lens _akskrrsChangeInfo (\s a -> s {_akskrrsChangeInfo = a})

instance NFData ActivateKeySigningKeyResponse
