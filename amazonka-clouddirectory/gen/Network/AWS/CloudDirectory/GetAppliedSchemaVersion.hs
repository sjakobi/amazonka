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
-- Module      : Network.AWS.CloudDirectory.GetAppliedSchemaVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns current applied schema version ARN, including the minor version in use.
module Network.AWS.CloudDirectory.GetAppliedSchemaVersion
  ( -- * Creating a Request
    getAppliedSchemaVersion,
    GetAppliedSchemaVersion,

    -- * Request Lenses
    gasvSchemaARN,

    -- * Destructuring the Response
    getAppliedSchemaVersionResponse,
    GetAppliedSchemaVersionResponse,

    -- * Response Lenses
    gasvrrsAppliedSchemaARN,
    gasvrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAppliedSchemaVersion' smart constructor.
newtype GetAppliedSchemaVersion = GetAppliedSchemaVersion'
  { _gasvSchemaARN ::
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

-- | Creates a value of 'GetAppliedSchemaVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasvSchemaARN' - The ARN of the applied schema.
getAppliedSchemaVersion ::
  -- | 'gasvSchemaARN'
  Text ->
  GetAppliedSchemaVersion
getAppliedSchemaVersion pSchemaARN_ =
  GetAppliedSchemaVersion'
    { _gasvSchemaARN =
        pSchemaARN_
    }

-- | The ARN of the applied schema.
gasvSchemaARN :: Lens' GetAppliedSchemaVersion Text
gasvSchemaARN = lens _gasvSchemaARN (\s a -> s {_gasvSchemaARN = a})

instance AWSRequest GetAppliedSchemaVersion where
  type
    Rs GetAppliedSchemaVersion =
      GetAppliedSchemaVersionResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          GetAppliedSchemaVersionResponse'
            <$> (x .?> "AppliedSchemaArn") <*> (pure (fromEnum s))
      )

instance Hashable GetAppliedSchemaVersion

instance NFData GetAppliedSchemaVersion

instance ToHeaders GetAppliedSchemaVersion where
  toHeaders = const mempty

instance ToJSON GetAppliedSchemaVersion where
  toJSON GetAppliedSchemaVersion' {..} =
    object
      (catMaybes [Just ("SchemaArn" .= _gasvSchemaARN)])

instance ToPath GetAppliedSchemaVersion where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/schema/getappliedschema"

instance ToQuery GetAppliedSchemaVersion where
  toQuery = const mempty

-- | /See:/ 'getAppliedSchemaVersionResponse' smart constructor.
data GetAppliedSchemaVersionResponse = GetAppliedSchemaVersionResponse'
  { _gasvrrsAppliedSchemaARN ::
      !( Maybe
           Text
       ),
    _gasvrrsResponseStatus ::
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

-- | Creates a value of 'GetAppliedSchemaVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasvrrsAppliedSchemaARN' - Current applied schema ARN, including the minor version in use if one was provided.
--
-- * 'gasvrrsResponseStatus' - -- | The response status code.
getAppliedSchemaVersionResponse ::
  -- | 'gasvrrsResponseStatus'
  Int ->
  GetAppliedSchemaVersionResponse
getAppliedSchemaVersionResponse pResponseStatus_ =
  GetAppliedSchemaVersionResponse'
    { _gasvrrsAppliedSchemaARN =
        Nothing,
      _gasvrrsResponseStatus = pResponseStatus_
    }

-- | Current applied schema ARN, including the minor version in use if one was provided.
gasvrrsAppliedSchemaARN :: Lens' GetAppliedSchemaVersionResponse (Maybe Text)
gasvrrsAppliedSchemaARN = lens _gasvrrsAppliedSchemaARN (\s a -> s {_gasvrrsAppliedSchemaARN = a})

-- | -- | The response status code.
gasvrrsResponseStatus :: Lens' GetAppliedSchemaVersionResponse Int
gasvrrsResponseStatus = lens _gasvrrsResponseStatus (\s a -> s {_gasvrrsResponseStatus = a})

instance NFData GetAppliedSchemaVersionResponse
