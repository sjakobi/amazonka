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
-- Module      : Network.AWS.MechanicalTurk.GetQualificationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @GetQualificationType@ operation retrieves information about a Qualification type using its ID.
module Network.AWS.MechanicalTurk.GetQualificationType
  ( -- * Creating a Request
    getQualificationType,
    GetQualificationType,

    -- * Request Lenses
    gqtQualificationTypeId,

    -- * Destructuring the Response
    getQualificationTypeResponse,
    GetQualificationTypeResponse,

    -- * Response Lenses
    gqtrrsQualificationType,
    gqtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getQualificationType' smart constructor.
newtype GetQualificationType = GetQualificationType'
  { _gqtQualificationTypeId ::
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

-- | Creates a value of 'GetQualificationType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gqtQualificationTypeId' - The ID of the QualificationType.
getQualificationType ::
  -- | 'gqtQualificationTypeId'
  Text ->
  GetQualificationType
getQualificationType pQualificationTypeId_ =
  GetQualificationType'
    { _gqtQualificationTypeId =
        pQualificationTypeId_
    }

-- | The ID of the QualificationType.
gqtQualificationTypeId :: Lens' GetQualificationType Text
gqtQualificationTypeId = lens _gqtQualificationTypeId (\s a -> s {_gqtQualificationTypeId = a})

instance AWSRequest GetQualificationType where
  type
    Rs GetQualificationType =
      GetQualificationTypeResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          GetQualificationTypeResponse'
            <$> (x .?> "QualificationType") <*> (pure (fromEnum s))
      )

instance Hashable GetQualificationType

instance NFData GetQualificationType

instance ToHeaders GetQualificationType where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.GetQualificationType" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetQualificationType where
  toJSON GetQualificationType' {..} =
    object
      ( catMaybes
          [ Just
              ("QualificationTypeId" .= _gqtQualificationTypeId)
          ]
      )

instance ToPath GetQualificationType where
  toPath = const "/"

instance ToQuery GetQualificationType where
  toQuery = const mempty

-- | /See:/ 'getQualificationTypeResponse' smart constructor.
data GetQualificationTypeResponse = GetQualificationTypeResponse'
  { _gqtrrsQualificationType ::
      !( Maybe
           QualificationType
       ),
    _gqtrrsResponseStatus ::
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

-- | Creates a value of 'GetQualificationTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gqtrrsQualificationType' - The returned Qualification Type
--
-- * 'gqtrrsResponseStatus' - -- | The response status code.
getQualificationTypeResponse ::
  -- | 'gqtrrsResponseStatus'
  Int ->
  GetQualificationTypeResponse
getQualificationTypeResponse pResponseStatus_ =
  GetQualificationTypeResponse'
    { _gqtrrsQualificationType =
        Nothing,
      _gqtrrsResponseStatus = pResponseStatus_
    }

-- | The returned Qualification Type
gqtrrsQualificationType :: Lens' GetQualificationTypeResponse (Maybe QualificationType)
gqtrrsQualificationType = lens _gqtrrsQualificationType (\s a -> s {_gqtrrsQualificationType = a})

-- | -- | The response status code.
gqtrrsResponseStatus :: Lens' GetQualificationTypeResponse Int
gqtrrsResponseStatus = lens _gqtrrsResponseStatus (\s a -> s {_gqtrrsResponseStatus = a})

instance NFData GetQualificationTypeResponse
