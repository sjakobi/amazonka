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
-- Module      : Network.AWS.SageMaker.DeleteArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an artifact. Either @ArtifactArn@ or @Source@ must be specified.
module Network.AWS.SageMaker.DeleteArtifact
  ( -- * Creating a Request
    deleteArtifact,
    DeleteArtifact,

    -- * Request Lenses
    daArtifactARN,
    daSource,

    -- * Destructuring the Response
    deleteArtifactResponse,
    DeleteArtifactResponse,

    -- * Response Lenses
    darrsArtifactARN,
    darrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteArtifact' smart constructor.
data DeleteArtifact = DeleteArtifact'
  { _daArtifactARN ::
      !(Maybe Text),
    _daSource :: !(Maybe ArtifactSource)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daArtifactARN' - The Amazon Resource Name (ARN) of the artifact to delete.
--
-- * 'daSource' - The URI of the source.
deleteArtifact ::
  DeleteArtifact
deleteArtifact =
  DeleteArtifact'
    { _daArtifactARN = Nothing,
      _daSource = Nothing
    }

-- | The Amazon Resource Name (ARN) of the artifact to delete.
daArtifactARN :: Lens' DeleteArtifact (Maybe Text)
daArtifactARN = lens _daArtifactARN (\s a -> s {_daArtifactARN = a})

-- | The URI of the source.
daSource :: Lens' DeleteArtifact (Maybe ArtifactSource)
daSource = lens _daSource (\s a -> s {_daSource = a})

instance AWSRequest DeleteArtifact where
  type Rs DeleteArtifact = DeleteArtifactResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DeleteArtifactResponse'
            <$> (x .?> "ArtifactArn") <*> (pure (fromEnum s))
      )

instance Hashable DeleteArtifact

instance NFData DeleteArtifact

instance ToHeaders DeleteArtifact where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteArtifact" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteArtifact where
  toJSON DeleteArtifact' {..} =
    object
      ( catMaybes
          [ ("ArtifactArn" .=) <$> _daArtifactARN,
            ("Source" .=) <$> _daSource
          ]
      )

instance ToPath DeleteArtifact where
  toPath = const "/"

instance ToQuery DeleteArtifact where
  toQuery = const mempty

-- | /See:/ 'deleteArtifactResponse' smart constructor.
data DeleteArtifactResponse = DeleteArtifactResponse'
  { _darrsArtifactARN ::
      !(Maybe Text),
    _darrsResponseStatus ::
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

-- | Creates a value of 'DeleteArtifactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darrsArtifactARN' - The Amazon Resource Name (ARN) of the artifact.
--
-- * 'darrsResponseStatus' - -- | The response status code.
deleteArtifactResponse ::
  -- | 'darrsResponseStatus'
  Int ->
  DeleteArtifactResponse
deleteArtifactResponse pResponseStatus_ =
  DeleteArtifactResponse'
    { _darrsArtifactARN =
        Nothing,
      _darrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the artifact.
darrsArtifactARN :: Lens' DeleteArtifactResponse (Maybe Text)
darrsArtifactARN = lens _darrsArtifactARN (\s a -> s {_darrsArtifactARN = a})

-- | -- | The response status code.
darrsResponseStatus :: Lens' DeleteArtifactResponse Int
darrsResponseStatus = lens _darrsResponseStatus (\s a -> s {_darrsResponseStatus = a})

instance NFData DeleteArtifactResponse
