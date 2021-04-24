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
-- Module      : Network.AWS.SageMaker.DeleteAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an association.
module Network.AWS.SageMaker.DeleteAssociation
  ( -- * Creating a Request
    deleteAssociation,
    DeleteAssociation,

    -- * Request Lenses
    daSourceARN,
    daDestinationARN,

    -- * Destructuring the Response
    deleteAssociationResponse,
    DeleteAssociationResponse,

    -- * Response Lenses
    delrsDestinationARN,
    delrsSourceARN,
    delrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteAssociation' smart constructor.
data DeleteAssociation = DeleteAssociation'
  { _daSourceARN ::
      !Text,
    _daDestinationARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daSourceARN' - The ARN of the source.
--
-- * 'daDestinationARN' - The Amazon Resource Name (ARN) of the destination.
deleteAssociation ::
  -- | 'daSourceARN'
  Text ->
  -- | 'daDestinationARN'
  Text ->
  DeleteAssociation
deleteAssociation pSourceARN_ pDestinationARN_ =
  DeleteAssociation'
    { _daSourceARN = pSourceARN_,
      _daDestinationARN = pDestinationARN_
    }

-- | The ARN of the source.
daSourceARN :: Lens' DeleteAssociation Text
daSourceARN = lens _daSourceARN (\s a -> s {_daSourceARN = a})

-- | The Amazon Resource Name (ARN) of the destination.
daDestinationARN :: Lens' DeleteAssociation Text
daDestinationARN = lens _daDestinationARN (\s a -> s {_daDestinationARN = a})

instance AWSRequest DeleteAssociation where
  type Rs DeleteAssociation = DeleteAssociationResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DeleteAssociationResponse'
            <$> (x .?> "DestinationArn")
            <*> (x .?> "SourceArn")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteAssociation

instance NFData DeleteAssociation

instance ToHeaders DeleteAssociation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteAssociation" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteAssociation where
  toJSON DeleteAssociation' {..} =
    object
      ( catMaybes
          [ Just ("SourceArn" .= _daSourceARN),
            Just ("DestinationArn" .= _daDestinationARN)
          ]
      )

instance ToPath DeleteAssociation where
  toPath = const "/"

instance ToQuery DeleteAssociation where
  toQuery = const mempty

-- | /See:/ 'deleteAssociationResponse' smart constructor.
data DeleteAssociationResponse = DeleteAssociationResponse'
  { _delrsDestinationARN ::
      !(Maybe Text),
    _delrsSourceARN ::
      !(Maybe Text),
    _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteAssociationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsDestinationARN' - The Amazon Resource Name (ARN) of the destination.
--
-- * 'delrsSourceARN' - The ARN of the source.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteAssociationResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteAssociationResponse
deleteAssociationResponse pResponseStatus_ =
  DeleteAssociationResponse'
    { _delrsDestinationARN =
        Nothing,
      _delrsSourceARN = Nothing,
      _delrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the destination.
delrsDestinationARN :: Lens' DeleteAssociationResponse (Maybe Text)
delrsDestinationARN = lens _delrsDestinationARN (\s a -> s {_delrsDestinationARN = a})

-- | The ARN of the source.
delrsSourceARN :: Lens' DeleteAssociationResponse (Maybe Text)
delrsSourceARN = lens _delrsSourceARN (\s a -> s {_delrsSourceARN = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteAssociationResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteAssociationResponse
