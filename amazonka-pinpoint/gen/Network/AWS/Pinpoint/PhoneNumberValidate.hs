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
-- Module      : Network.AWS.Pinpoint.PhoneNumberValidate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a phone number.
module Network.AWS.Pinpoint.PhoneNumberValidate
  ( -- * Creating a Request
    phoneNumberValidate,
    PhoneNumberValidate,

    -- * Request Lenses
    pnvNumberValidateRequest,

    -- * Destructuring the Response
    phoneNumberValidateResponse,
    PhoneNumberValidateResponse,

    -- * Response Lenses
    pnvrrsResponseStatus,
    pnvrrsNumberValidateResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'phoneNumberValidate' smart constructor.
newtype PhoneNumberValidate = PhoneNumberValidate'
  { _pnvNumberValidateRequest ::
      NumberValidateRequest
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PhoneNumberValidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnvNumberValidateRequest' - Undocumented member.
phoneNumberValidate ::
  -- | 'pnvNumberValidateRequest'
  NumberValidateRequest ->
  PhoneNumberValidate
phoneNumberValidate pNumberValidateRequest_ =
  PhoneNumberValidate'
    { _pnvNumberValidateRequest =
        pNumberValidateRequest_
    }

-- | Undocumented member.
pnvNumberValidateRequest :: Lens' PhoneNumberValidate NumberValidateRequest
pnvNumberValidateRequest = lens _pnvNumberValidateRequest (\s a -> s {_pnvNumberValidateRequest = a})

instance AWSRequest PhoneNumberValidate where
  type
    Rs PhoneNumberValidate =
      PhoneNumberValidateResponse
  request = postJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          PhoneNumberValidateResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable PhoneNumberValidate

instance NFData PhoneNumberValidate

instance ToHeaders PhoneNumberValidate where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PhoneNumberValidate where
  toJSON PhoneNumberValidate' {..} =
    object
      ( catMaybes
          [ Just
              ( "NumberValidateRequest"
                  .= _pnvNumberValidateRequest
              )
          ]
      )

instance ToPath PhoneNumberValidate where
  toPath = const "/v1/phone/number/validate"

instance ToQuery PhoneNumberValidate where
  toQuery = const mempty

-- | /See:/ 'phoneNumberValidateResponse' smart constructor.
data PhoneNumberValidateResponse = PhoneNumberValidateResponse'
  { _pnvrrsResponseStatus ::
      !Int,
    _pnvrrsNumberValidateResponse ::
      !NumberValidateResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PhoneNumberValidateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnvrrsResponseStatus' - -- | The response status code.
--
-- * 'pnvrrsNumberValidateResponse' - Undocumented member.
phoneNumberValidateResponse ::
  -- | 'pnvrrsResponseStatus'
  Int ->
  -- | 'pnvrrsNumberValidateResponse'
  NumberValidateResponse ->
  PhoneNumberValidateResponse
phoneNumberValidateResponse
  pResponseStatus_
  pNumberValidateResponse_ =
    PhoneNumberValidateResponse'
      { _pnvrrsResponseStatus =
          pResponseStatus_,
        _pnvrrsNumberValidateResponse =
          pNumberValidateResponse_
      }

-- | -- | The response status code.
pnvrrsResponseStatus :: Lens' PhoneNumberValidateResponse Int
pnvrrsResponseStatus = lens _pnvrrsResponseStatus (\s a -> s {_pnvrrsResponseStatus = a})

-- | Undocumented member.
pnvrrsNumberValidateResponse :: Lens' PhoneNumberValidateResponse NumberValidateResponse
pnvrrsNumberValidateResponse = lens _pnvrrsNumberValidateResponse (\s a -> s {_pnvrrsNumberValidateResponse = a})

instance NFData PhoneNumberValidateResponse
