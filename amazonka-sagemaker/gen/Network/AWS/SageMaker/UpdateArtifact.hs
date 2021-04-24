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
-- Module      : Network.AWS.SageMaker.UpdateArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an artifact.
module Network.AWS.SageMaker.UpdateArtifact
  ( -- * Creating a Request
    updateArtifact,
    UpdateArtifact,

    -- * Request Lenses
    uPropertiesToRemove,
    uArtifactName,
    uProperties,
    uArtifactARN,

    -- * Destructuring the Response
    updateArtifactResponse,
    UpdateArtifactResponse,

    -- * Response Lenses
    ursArtifactARN,
    ursResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateArtifact' smart constructor.
data UpdateArtifact = UpdateArtifact'
  { _uPropertiesToRemove ::
      !(Maybe [Text]),
    _uArtifactName :: !(Maybe Text),
    _uProperties :: !(Maybe (Map Text Text)),
    _uArtifactARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uPropertiesToRemove' - A list of properties to remove.
--
-- * 'uArtifactName' - The new name for the artifact.
--
-- * 'uProperties' - The new list of properties. Overwrites the current property list.
--
-- * 'uArtifactARN' - The Amazon Resource Name (ARN) of the artifact to update.
updateArtifact ::
  -- | 'uArtifactARN'
  Text ->
  UpdateArtifact
updateArtifact pArtifactARN_ =
  UpdateArtifact'
    { _uPropertiesToRemove = Nothing,
      _uArtifactName = Nothing,
      _uProperties = Nothing,
      _uArtifactARN = pArtifactARN_
    }

-- | A list of properties to remove.
uPropertiesToRemove :: Lens' UpdateArtifact [Text]
uPropertiesToRemove = lens _uPropertiesToRemove (\s a -> s {_uPropertiesToRemove = a}) . _Default . _Coerce

-- | The new name for the artifact.
uArtifactName :: Lens' UpdateArtifact (Maybe Text)
uArtifactName = lens _uArtifactName (\s a -> s {_uArtifactName = a})

-- | The new list of properties. Overwrites the current property list.
uProperties :: Lens' UpdateArtifact (HashMap Text Text)
uProperties = lens _uProperties (\s a -> s {_uProperties = a}) . _Default . _Map

-- | The Amazon Resource Name (ARN) of the artifact to update.
uArtifactARN :: Lens' UpdateArtifact Text
uArtifactARN = lens _uArtifactARN (\s a -> s {_uArtifactARN = a})

instance AWSRequest UpdateArtifact where
  type Rs UpdateArtifact = UpdateArtifactResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          UpdateArtifactResponse'
            <$> (x .?> "ArtifactArn") <*> (pure (fromEnum s))
      )

instance Hashable UpdateArtifact

instance NFData UpdateArtifact

instance ToHeaders UpdateArtifact where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdateArtifact" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateArtifact where
  toJSON UpdateArtifact' {..} =
    object
      ( catMaybes
          [ ("PropertiesToRemove" .=) <$> _uPropertiesToRemove,
            ("ArtifactName" .=) <$> _uArtifactName,
            ("Properties" .=) <$> _uProperties,
            Just ("ArtifactArn" .= _uArtifactARN)
          ]
      )

instance ToPath UpdateArtifact where
  toPath = const "/"

instance ToQuery UpdateArtifact where
  toQuery = const mempty

-- | /See:/ 'updateArtifactResponse' smart constructor.
data UpdateArtifactResponse = UpdateArtifactResponse'
  { _ursArtifactARN ::
      !(Maybe Text),
    _ursResponseStatus ::
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

-- | Creates a value of 'UpdateArtifactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ursArtifactARN' - The Amazon Resource Name (ARN) of the artifact.
--
-- * 'ursResponseStatus' - -- | The response status code.
updateArtifactResponse ::
  -- | 'ursResponseStatus'
  Int ->
  UpdateArtifactResponse
updateArtifactResponse pResponseStatus_ =
  UpdateArtifactResponse'
    { _ursArtifactARN = Nothing,
      _ursResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the artifact.
ursArtifactARN :: Lens' UpdateArtifactResponse (Maybe Text)
ursArtifactARN = lens _ursArtifactARN (\s a -> s {_ursArtifactARN = a})

-- | -- | The response status code.
ursResponseStatus :: Lens' UpdateArtifactResponse Int
ursResponseStatus = lens _ursResponseStatus (\s a -> s {_ursResponseStatus = a})

instance NFData UpdateArtifactResponse
