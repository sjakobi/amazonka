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
-- Module      : Network.AWS.Route53.DeleteKeySigningKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a key-signing key (KSK). Before you can delete a KSK, you must deactivate it. The KSK must be deactived before you can delete it regardless of whether the hosted zone is enabled for DNSSEC signing.
module Network.AWS.Route53.DeleteKeySigningKey
  ( -- * Creating a Request
    deleteKeySigningKey,
    DeleteKeySigningKey,

    -- * Request Lenses
    delHostedZoneId,
    delName,

    -- * Destructuring the Response
    deleteKeySigningKeyResponse,
    DeleteKeySigningKeyResponse,

    -- * Response Lenses
    dkskrrsResponseStatus,
    dkskrrsChangeInfo,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | /See:/ 'deleteKeySigningKey' smart constructor.
data DeleteKeySigningKey = DeleteKeySigningKey'
  { _delHostedZoneId ::
      !ResourceId,
    _delName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteKeySigningKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delHostedZoneId' - A unique string used to identify a hosted zone.
--
-- * 'delName' - A string used to identify a key-signing key (KSK).
deleteKeySigningKey ::
  -- | 'delHostedZoneId'
  ResourceId ->
  -- | 'delName'
  Text ->
  DeleteKeySigningKey
deleteKeySigningKey pHostedZoneId_ pName_ =
  DeleteKeySigningKey'
    { _delHostedZoneId =
        pHostedZoneId_,
      _delName = pName_
    }

-- | A unique string used to identify a hosted zone.
delHostedZoneId :: Lens' DeleteKeySigningKey ResourceId
delHostedZoneId = lens _delHostedZoneId (\s a -> s {_delHostedZoneId = a})

-- | A string used to identify a key-signing key (KSK).
delName :: Lens' DeleteKeySigningKey Text
delName = lens _delName (\s a -> s {_delName = a})

instance AWSRequest DeleteKeySigningKey where
  type
    Rs DeleteKeySigningKey =
      DeleteKeySigningKeyResponse
  request = delete route53
  response =
    receiveXML
      ( \s h x ->
          DeleteKeySigningKeyResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "ChangeInfo")
      )

instance Hashable DeleteKeySigningKey

instance NFData DeleteKeySigningKey

instance ToHeaders DeleteKeySigningKey where
  toHeaders = const mempty

instance ToPath DeleteKeySigningKey where
  toPath DeleteKeySigningKey' {..} =
    mconcat
      [ "/2013-04-01/keysigningkey/",
        toBS _delHostedZoneId,
        "/",
        toBS _delName
      ]

instance ToQuery DeleteKeySigningKey where
  toQuery = const mempty

-- | /See:/ 'deleteKeySigningKeyResponse' smart constructor.
data DeleteKeySigningKeyResponse = DeleteKeySigningKeyResponse'
  { _dkskrrsResponseStatus ::
      !Int,
    _dkskrrsChangeInfo ::
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

-- | Creates a value of 'DeleteKeySigningKeyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkskrrsResponseStatus' - -- | The response status code.
--
-- * 'dkskrrsChangeInfo' - Undocumented member.
deleteKeySigningKeyResponse ::
  -- | 'dkskrrsResponseStatus'
  Int ->
  -- | 'dkskrrsChangeInfo'
  ChangeInfo ->
  DeleteKeySigningKeyResponse
deleteKeySigningKeyResponse
  pResponseStatus_
  pChangeInfo_ =
    DeleteKeySigningKeyResponse'
      { _dkskrrsResponseStatus =
          pResponseStatus_,
        _dkskrrsChangeInfo = pChangeInfo_
      }

-- | -- | The response status code.
dkskrrsResponseStatus :: Lens' DeleteKeySigningKeyResponse Int
dkskrrsResponseStatus = lens _dkskrrsResponseStatus (\s a -> s {_dkskrrsResponseStatus = a})

-- | Undocumented member.
dkskrrsChangeInfo :: Lens' DeleteKeySigningKeyResponse ChangeInfo
dkskrrsChangeInfo = lens _dkskrrsChangeInfo (\s a -> s {_dkskrrsChangeInfo = a})

instance NFData DeleteKeySigningKeyResponse
