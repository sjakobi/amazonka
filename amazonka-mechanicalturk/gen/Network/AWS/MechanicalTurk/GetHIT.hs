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
-- Module      : Network.AWS.MechanicalTurk.GetHIT
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @GetHIT@ operation retrieves the details of the specified HIT.
module Network.AWS.MechanicalTurk.GetHIT
  ( -- * Creating a Request
    getHIT,
    GetHIT,

    -- * Request Lenses
    ghitHITId,

    -- * Destructuring the Response
    getHITResponse,
    GetHITResponse,

    -- * Response Lenses
    ghitrrsHIT,
    ghitrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getHIT' smart constructor.
newtype GetHIT = GetHIT' {_ghitHITId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetHIT' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghitHITId' - The ID of the HIT to be retrieved.
getHIT ::
  -- | 'ghitHITId'
  Text ->
  GetHIT
getHIT pHITId_ = GetHIT' {_ghitHITId = pHITId_}

-- | The ID of the HIT to be retrieved.
ghitHITId :: Lens' GetHIT Text
ghitHITId = lens _ghitHITId (\s a -> s {_ghitHITId = a})

instance AWSRequest GetHIT where
  type Rs GetHIT = GetHITResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          GetHITResponse'
            <$> (x .?> "HIT") <*> (pure (fromEnum s))
      )

instance Hashable GetHIT

instance NFData GetHIT

instance ToHeaders GetHIT where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.GetHIT" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetHIT where
  toJSON GetHIT' {..} =
    object (catMaybes [Just ("HITId" .= _ghitHITId)])

instance ToPath GetHIT where
  toPath = const "/"

instance ToQuery GetHIT where
  toQuery = const mempty

-- | /See:/ 'getHITResponse' smart constructor.
data GetHITResponse = GetHITResponse'
  { _ghitrrsHIT ::
      !(Maybe HIT),
    _ghitrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetHITResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghitrrsHIT' - Contains the requested HIT data.
--
-- * 'ghitrrsResponseStatus' - -- | The response status code.
getHITResponse ::
  -- | 'ghitrrsResponseStatus'
  Int ->
  GetHITResponse
getHITResponse pResponseStatus_ =
  GetHITResponse'
    { _ghitrrsHIT = Nothing,
      _ghitrrsResponseStatus = pResponseStatus_
    }

-- | Contains the requested HIT data.
ghitrrsHIT :: Lens' GetHITResponse (Maybe HIT)
ghitrrsHIT = lens _ghitrrsHIT (\s a -> s {_ghitrrsHIT = a})

-- | -- | The response status code.
ghitrrsResponseStatus :: Lens' GetHITResponse Int
ghitrrsResponseStatus = lens _ghitrrsResponseStatus (\s a -> s {_ghitrrsResponseStatus = a})

instance NFData GetHITResponse
