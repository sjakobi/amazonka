{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AssociationSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AssociationSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.AssociationEdgeType
import Network.AWS.SageMaker.Types.UserContext

-- | Lists a summary of the properties of an association. An association is an entity that links other lineage or experiment entities. An example would be an association between a training job and a model.
--
--
--
-- /See:/ 'associationSummary' smart constructor.
data AssociationSummary = AssociationSummary'
  { _assDestinationType ::
      !(Maybe Text),
    _assCreationTime ::
      !(Maybe POSIX),
    _assDestinationARN ::
      !(Maybe Text),
    _assDestinationName ::
      !(Maybe Text),
    _assSourceName :: !(Maybe Text),
    _assAssociationType ::
      !(Maybe AssociationEdgeType),
    _assCreatedBy ::
      !(Maybe UserContext),
    _assSourceARN :: !(Maybe Text),
    _assSourceType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssociationSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assDestinationType' - The destination type.
--
-- * 'assCreationTime' - When the association was created.
--
-- * 'assDestinationARN' - The Amazon Resource Name (ARN) of the destination.
--
-- * 'assDestinationName' - The name of the destination.
--
-- * 'assSourceName' - The name of the source.
--
-- * 'assAssociationType' - The type of the association.
--
-- * 'assCreatedBy' - Undocumented member.
--
-- * 'assSourceARN' - The ARN of the source.
--
-- * 'assSourceType' - The source type.
associationSummary ::
  AssociationSummary
associationSummary =
  AssociationSummary'
    { _assDestinationType = Nothing,
      _assCreationTime = Nothing,
      _assDestinationARN = Nothing,
      _assDestinationName = Nothing,
      _assSourceName = Nothing,
      _assAssociationType = Nothing,
      _assCreatedBy = Nothing,
      _assSourceARN = Nothing,
      _assSourceType = Nothing
    }

-- | The destination type.
assDestinationType :: Lens' AssociationSummary (Maybe Text)
assDestinationType = lens _assDestinationType (\s a -> s {_assDestinationType = a})

-- | When the association was created.
assCreationTime :: Lens' AssociationSummary (Maybe UTCTime)
assCreationTime = lens _assCreationTime (\s a -> s {_assCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the destination.
assDestinationARN :: Lens' AssociationSummary (Maybe Text)
assDestinationARN = lens _assDestinationARN (\s a -> s {_assDestinationARN = a})

-- | The name of the destination.
assDestinationName :: Lens' AssociationSummary (Maybe Text)
assDestinationName = lens _assDestinationName (\s a -> s {_assDestinationName = a})

-- | The name of the source.
assSourceName :: Lens' AssociationSummary (Maybe Text)
assSourceName = lens _assSourceName (\s a -> s {_assSourceName = a})

-- | The type of the association.
assAssociationType :: Lens' AssociationSummary (Maybe AssociationEdgeType)
assAssociationType = lens _assAssociationType (\s a -> s {_assAssociationType = a})

-- | Undocumented member.
assCreatedBy :: Lens' AssociationSummary (Maybe UserContext)
assCreatedBy = lens _assCreatedBy (\s a -> s {_assCreatedBy = a})

-- | The ARN of the source.
assSourceARN :: Lens' AssociationSummary (Maybe Text)
assSourceARN = lens _assSourceARN (\s a -> s {_assSourceARN = a})

-- | The source type.
assSourceType :: Lens' AssociationSummary (Maybe Text)
assSourceType = lens _assSourceType (\s a -> s {_assSourceType = a})

instance FromJSON AssociationSummary where
  parseJSON =
    withObject
      "AssociationSummary"
      ( \x ->
          AssociationSummary'
            <$> (x .:? "DestinationType")
            <*> (x .:? "CreationTime")
            <*> (x .:? "DestinationArn")
            <*> (x .:? "DestinationName")
            <*> (x .:? "SourceName")
            <*> (x .:? "AssociationType")
            <*> (x .:? "CreatedBy")
            <*> (x .:? "SourceArn")
            <*> (x .:? "SourceType")
      )

instance Hashable AssociationSummary

instance NFData AssociationSummary
