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
-- Module      : Network.AWS.SageMaker.AddAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an /association/ between the source and the destination. A source can be associated with multiple destinations, and a destination can be associated with multiple sources. An association is a lineage tracking entity. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html Amazon SageMaker ML Lineage Tracking> .
module Network.AWS.SageMaker.AddAssociation
  ( -- * Creating a Request
    addAssociation,
    AddAssociation,

    -- * Request Lenses
    aaAssociationType,
    aaSourceARN,
    aaDestinationARN,

    -- * Destructuring the Response
    addAssociationResponse,
    AddAssociationResponse,

    -- * Response Lenses
    aarrsDestinationARN,
    aarrsSourceARN,
    aarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'addAssociation' smart constructor.
data AddAssociation = AddAssociation'
  { _aaAssociationType ::
      !(Maybe AssociationEdgeType),
    _aaSourceARN :: !Text,
    _aaDestinationARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AddAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaAssociationType' - The type of association. The following are suggested uses for each type. Amazon SageMaker places no restrictions on their use.     * ContributedTo - The source contributed to the destination or had a part in enabling the destination. For example, the training data contributed to the training job.     * AssociatedWith - The source is connected to the destination. For example, an approval workflow is associated with a model deployment.     * DerivedFrom - The destination is a modification of the source. For example, a digest output of a channel input for a processing job is derived from the original inputs.     * Produced - The source generated the destination. For example, a training job produced a model artifact.
--
-- * 'aaSourceARN' - The ARN of the source.
--
-- * 'aaDestinationARN' - The Amazon Resource Name (ARN) of the destination.
addAssociation ::
  -- | 'aaSourceARN'
  Text ->
  -- | 'aaDestinationARN'
  Text ->
  AddAssociation
addAssociation pSourceARN_ pDestinationARN_ =
  AddAssociation'
    { _aaAssociationType = Nothing,
      _aaSourceARN = pSourceARN_,
      _aaDestinationARN = pDestinationARN_
    }

-- | The type of association. The following are suggested uses for each type. Amazon SageMaker places no restrictions on their use.     * ContributedTo - The source contributed to the destination or had a part in enabling the destination. For example, the training data contributed to the training job.     * AssociatedWith - The source is connected to the destination. For example, an approval workflow is associated with a model deployment.     * DerivedFrom - The destination is a modification of the source. For example, a digest output of a channel input for a processing job is derived from the original inputs.     * Produced - The source generated the destination. For example, a training job produced a model artifact.
aaAssociationType :: Lens' AddAssociation (Maybe AssociationEdgeType)
aaAssociationType = lens _aaAssociationType (\s a -> s {_aaAssociationType = a})

-- | The ARN of the source.
aaSourceARN :: Lens' AddAssociation Text
aaSourceARN = lens _aaSourceARN (\s a -> s {_aaSourceARN = a})

-- | The Amazon Resource Name (ARN) of the destination.
aaDestinationARN :: Lens' AddAssociation Text
aaDestinationARN = lens _aaDestinationARN (\s a -> s {_aaDestinationARN = a})

instance AWSRequest AddAssociation where
  type Rs AddAssociation = AddAssociationResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          AddAssociationResponse'
            <$> (x .?> "DestinationArn")
            <*> (x .?> "SourceArn")
            <*> (pure (fromEnum s))
      )

instance Hashable AddAssociation

instance NFData AddAssociation

instance ToHeaders AddAssociation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.AddAssociation" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AddAssociation where
  toJSON AddAssociation' {..} =
    object
      ( catMaybes
          [ ("AssociationType" .=) <$> _aaAssociationType,
            Just ("SourceArn" .= _aaSourceARN),
            Just ("DestinationArn" .= _aaDestinationARN)
          ]
      )

instance ToPath AddAssociation where
  toPath = const "/"

instance ToQuery AddAssociation where
  toQuery = const mempty

-- | /See:/ 'addAssociationResponse' smart constructor.
data AddAssociationResponse = AddAssociationResponse'
  { _aarrsDestinationARN ::
      !(Maybe Text),
    _aarrsSourceARN ::
      !(Maybe Text),
    _aarrsResponseStatus ::
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

-- | Creates a value of 'AddAssociationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aarrsDestinationARN' - The Amazon Resource Name (ARN) of the destination.
--
-- * 'aarrsSourceARN' - The ARN of the source.
--
-- * 'aarrsResponseStatus' - -- | The response status code.
addAssociationResponse ::
  -- | 'aarrsResponseStatus'
  Int ->
  AddAssociationResponse
addAssociationResponse pResponseStatus_ =
  AddAssociationResponse'
    { _aarrsDestinationARN =
        Nothing,
      _aarrsSourceARN = Nothing,
      _aarrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the destination.
aarrsDestinationARN :: Lens' AddAssociationResponse (Maybe Text)
aarrsDestinationARN = lens _aarrsDestinationARN (\s a -> s {_aarrsDestinationARN = a})

-- | The ARN of the source.
aarrsSourceARN :: Lens' AddAssociationResponse (Maybe Text)
aarrsSourceARN = lens _aarrsSourceARN (\s a -> s {_aarrsSourceARN = a})

-- | -- | The response status code.
aarrsResponseStatus :: Lens' AddAssociationResponse Int
aarrsResponseStatus = lens _aarrsResponseStatus (\s a -> s {_aarrsResponseStatus = a})

instance NFData AddAssociationResponse
