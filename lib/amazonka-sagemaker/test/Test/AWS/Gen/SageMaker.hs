{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-orphans        #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.SageMaker
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.SageMaker where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.SageMaker
import Test.AWS.SageMaker.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestCreateNotebookInstance $
--             mkCreateNotebookInstance
--
--         , requestDeleteModelPackage $
--             mkDeleteModelPackage
--
--         , requestDescribeMonitoringSchedule $
--             mkDescribeMonitoringSchedule
--
--         , requestListTrialComponents $
--             mkListTrialComponents
--
--         , requestDescribeEndpointConfig $
--             mkDescribeEndpointConfig
--
--         , requestDescribeApp $
--             mkDescribeApp
--
--         , requestListImageVersions $
--             mkListImageVersions
--
--         , requestDescribeAutoMLJob $
--             mkDescribeAutoMLJob
--
--         , requestStopProcessingJob $
--             mkStopProcessingJob
--
--         , requestListLabelingJobsForWorkteam $
--             mkListLabelingJobsForWorkteam
--
--         , requestCreateTransformJob $
--             mkCreateTransformJob
--
--         , requestListCompilationJobs $
--             mkListCompilationJobs
--
--         , requestDisassociateTrialComponent $
--             mkDisassociateTrialComponent
--
--         , requestStopHyperParameterTuningJob $
--             mkStopHyperParameterTuningJob
--
--         , requestListHumanTaskUis $
--             mkListHumanTaskUis
--
--         , requestCreateEndpoint $
--             mkCreateEndpoint
--
--         , requestGetSearchSuggestions $
--             mkGetSearchSuggestions
--
--         , requestDescribeTrial $
--             mkDescribeTrial
--
--         , requestCreatePresignedDomainUrl $
--             mkCreatePresignedDomainUrl
--
--         , requestDescribeCodeRepository $
--             mkDescribeCodeRepository
--
--         , requestDescribeImage $
--             mkDescribeImage
--
--         , requestDescribeTrainingJob $
--             mkDescribeTrainingJob
--
--         , requestDeleteEndpoint $
--             mkDeleteEndpoint
--
--         , requestUpdateEndpoint $
--             mkUpdateEndpoint
--
--         , requestCreateHumanTaskUi $
--             mkCreateHumanTaskUi
--
--         , requestCreateCompilationJob $
--             mkCreateCompilationJob
--
--         , requestDeleteAppImageConfig $
--             mkDeleteAppImageConfig
--
--         , requestUpdateAppImageConfig $
--             mkUpdateAppImageConfig
--
--         , requestDeleteNotebookInstanceLifecycleConfig $
--             mkDeleteNotebookInstanceLifecycleConfig
--
--         , requestUpdateNotebookInstanceLifecycleConfig $
--             mkUpdateNotebookInstanceLifecycleConfig
--
--         , requestDeleteWorkforce $
--             mkDeleteWorkforce
--
--         , requestUpdateWorkforce $
--             mkUpdateWorkforce
--
--         , requestListProcessingJobs $
--             mkListProcessingJobs
--
--         , requestCreateLabelingJob $
--             mkCreateLabelingJob
--
--         , requestDescribeNotebookInstance $
--             mkDescribeNotebookInstance
--
--         , requestCreateMonitoringSchedule $
--             mkCreateMonitoringSchedule
--
--         , requestListAppImageConfigs $
--             mkListAppImageConfigs
--
--         , requestCreateEndpointConfig $
--             mkCreateEndpointConfig
--
--         , requestStopNotebookInstance $
--             mkStopNotebookInstance
--
--         , requestUpdateEndpointWeightsAndCapacities $
--             mkUpdateEndpointWeightsAndCapacities
--
--         , requestCreateAppImageConfig $
--             mkCreateAppImageConfig
--
--         , requestDeleteTags $
--             mkDeleteTags
--
--         , requestListExperiments $
--             mkListExperiments
--
--         , requestListAutoMLJobs $
--             mkListAutoMLJobs
--
--         , requestListApps $
--             mkListApps
--
--         , requestCreateProcessingJob $
--             mkCreateProcessingJob
--
--         , requestDeleteMonitoringSchedule $
--             mkDeleteMonitoringSchedule
--
--         , requestDescribeModelPackage $
--             mkDescribeModelPackage
--
--         , requestDeleteEndpointConfig $
--             mkDeleteEndpointConfig
--
--         , requestUpdateMonitoringSchedule $
--             mkUpdateMonitoringSchedule
--
--         , requestDeleteApp $
--             mkDeleteApp
--
--         , requestCreateAlgorithm $
--             mkCreateAlgorithm
--
--         , requestStopTransformJob $
--             mkStopTransformJob
--
--         , requestCreateModel $
--             mkCreateModel
--
--         , requestListUserProfiles $
--             mkListUserProfiles
--
--         , requestCreateCodeRepository $
--             mkCreateCodeRepository
--
--         , requestCreateHyperParameterTuningJob $
--             mkCreateHyperParameterTuningJob
--
--         , requestDeleteTrial $
--             mkDeleteTrial
--
--         , requestUpdateTrial $
--             mkUpdateTrial
--
--         , requestListCodeRepositories $
--             mkListCodeRepositories
--
--         , requestDescribeCompilationJob $
--             mkDescribeCompilationJob
--
--         , requestListHyperParameterTuningJobs $
--             mkListHyperParameterTuningJobs
--
--         , requestListAlgorithms $
--             mkListAlgorithms
--
--         , requestRenderUiTemplate $
--             mkRenderUiTemplate
--
--         , requestDeleteFlowDefinition $
--             mkDeleteFlowDefinition
--
--         , requestCreateTrial $
--             mkCreateTrial
--
--         , requestDeleteModel $
--             mkDeleteModel
--
--         , requestListModels $
--             mkListModels
--
--         , requestDeleteAlgorithm $
--             mkDeleteAlgorithm
--
--         , requestAssociateTrialComponent $
--             mkAssociateTrialComponent
--
--         , requestDescribeNotebookInstanceLifecycleConfig $
--             mkDescribeNotebookInstanceLifecycleConfig
--
--         , requestDescribeWorkforce $
--             mkDescribeWorkforce
--
--         , requestCreateModelPackage $
--             mkCreateModelPackage
--
--         , requestStopMonitoringSchedule $
--             mkStopMonitoringSchedule
--
--         , requestDescribeAppImageConfig $
--             mkDescribeAppImageConfig
--
--         , requestListNotebookInstances $
--             mkListNotebookInstances
--
--         , requestStopLabelingJob $
--             mkStopLabelingJob
--
--         , requestDeleteNotebookInstance $
--             mkDeleteNotebookInstance
--
--         , requestUpdateNotebookInstance $
--             mkUpdateNotebookInstance
--
--         , requestListModelPackages $
--             mkListModelPackages
--
--         , requestDeleteImageVersion $
--             mkDeleteImageVersion
--
--         , requestDescribeExperiment $
--             mkDescribeExperiment
--
--         , requestDeleteTrialComponent $
--             mkDeleteTrialComponent
--
--         , requestUpdateTrialComponent $
--             mkUpdateTrialComponent
--
--         , requestDescribeLabelingJob $
--             mkDescribeLabelingJob
--
--         , requestCreateDomain $
--             mkCreateDomain
--
--         , requestDescribeUserProfile $
--             mkDescribeUserProfile
--
--         , requestListMonitoringExecutions $
--             mkListMonitoringExecutions
--
--         , requestDeleteHumanTaskUi $
--             mkDeleteHumanTaskUi
--
--         , requestStopTrainingJob $
--             mkStopTrainingJob
--
--         , requestDescribeAlgorithm $
--             mkDescribeAlgorithm
--
--         , requestDescribeModel $
--             mkDescribeModel
--
--         , requestListTransformJobs $
--             mkListTransformJobs
--
--         , requestDescribeHyperParameterTuningJob $
--             mkDescribeHyperParameterTuningJob
--
--         , requestListEndpoints $
--             mkListEndpoints
--
--         , requestDescribeFlowDefinition $
--             mkDescribeFlowDefinition
--
--         , requestCreatePresignedNotebookInstanceUrl $
--             mkCreatePresignedNotebookInstanceUrl
--
--         , requestListTrainingJobsForHyperParameterTuningJob $
--             mkListTrainingJobsForHyperParameterTuningJob
--
--         , requestDescribeDomain $
--             mkDescribeDomain
--
--         , requestUpdateWorkteam $
--             mkUpdateWorkteam
--
--         , requestDeleteWorkteam $
--             mkDeleteWorkteam
--
--         , requestListWorkteams $
--             mkListWorkteams
--
--         , requestCreateAutoMLJob $
--             mkCreateAutoMLJob
--
--         , requestCreateApp $
--             mkCreateApp
--
--         , requestCreateExperiment $
--             mkCreateExperiment
--
--         , requestListNotebookInstanceLifecycleConfigs $
--             mkListNotebookInstanceLifecycleConfigs
--
--         , requestListWorkforces $
--             mkListWorkforces
--
--         , requestDescribeSubscribedWorkteam $
--             mkDescribeSubscribedWorkteam
--
--         , requestCreateWorkteam $
--             mkCreateWorkteam
--
--         , requestCreateNotebookInstanceLifecycleConfig $
--             mkCreateNotebookInstanceLifecycleConfig
--
--         , requestListMonitoringSchedules $
--             mkListMonitoringSchedules
--
--         , requestListLabelingJobs $
--             mkListLabelingJobs
--
--         , requestStartNotebookInstance $
--             mkStartNotebookInstance
--
--         , requestUpdateExperiment $
--             mkUpdateExperiment
--
--         , requestDeleteExperiment $
--             mkDeleteExperiment
--
--         , requestAddTags $
--             mkAddTags
--
--         , requestCreateWorkforce $
--             mkCreateWorkforce
--
--         , requestDescribeTrialComponent $
--             mkDescribeTrialComponent
--
--         , requestDescribeImageVersion $
--             mkDescribeImageVersion
--
--         , requestListEndpointConfigs $
--             mkListEndpointConfigs
--
--         , requestCreateFlowDefinition $
--             mkCreateFlowDefinition
--
--         , requestListTags $
--             mkListTags
--
--         , requestDescribeHumanTaskUi $
--             mkDescribeHumanTaskUi
--
--         , requestCreateTrainingJob $
--             mkCreateTrainingJob
--
--         , requestDeleteUserProfile $
--             mkDeleteUserProfile
--
--         , requestUpdateUserProfile $
--             mkUpdateUserProfile
--
--         , requestCreateImage $
--             mkCreateImage
--
--         , requestListTrials $
--             mkListTrials
--
--         , requestStopCompilationJob $
--             mkStopCompilationJob
--
--         , requestListImages $
--             mkListImages
--
--         , requestCreateUserProfile $
--             mkCreateUserProfile
--
--         , requestSearch $
--             mkSearch
--
--         , requestUpdateCodeRepository $
--             mkUpdateCodeRepository
--
--         , requestDeleteCodeRepository $
--             mkDeleteCodeRepository
--
--         , requestDescribeTransformJob $
--             mkDescribeTransformJob
--
--         , requestListCandidatesForAutoMLJob $
--             mkListCandidatesForAutoMLJob
--
--         , requestDeleteImage $
--             mkDeleteImage
--
--         , requestUpdateImage $
--             mkUpdateImage
--
--         , requestListFlowDefinitions $
--             mkListFlowDefinitions
--
--         , requestDescribeEndpoint $
--             mkDescribeEndpoint
--
--         , requestListTrainingJobs $
--             mkListTrainingJobs
--
--         , requestDescribeWorkteam $
--             mkDescribeWorkteam
--
--         , requestListSubscribedWorkteams $
--             mkListSubscribedWorkteams
--
--         , requestDeleteDomain $
--             mkDeleteDomain
--
--         , requestUpdateDomain $
--             mkUpdateDomain
--
--         , requestListDomains $
--             mkListDomains
--
--         , requestCreateImageVersion $
--             mkCreateImageVersion
--
--         , requestStartMonitoringSchedule $
--             mkStartMonitoringSchedule
--
--         , requestStopAutoMLJob $
--             mkStopAutoMLJob
--
--         , requestCreateTrialComponent $
--             mkCreateTrialComponent
--
--         , requestDescribeProcessingJob $
--             mkDescribeProcessingJob
--
--           ]

--     , testGroup "response"
--         [ responseCreateNotebookInstance $
--             mkCreateNotebookInstanceResponse
--
--         , responseDeleteModelPackage $
--             mkDeleteModelPackageResponse
--
--         , responseDescribeMonitoringSchedule $
--             mkDescribeMonitoringScheduleResponse
--
--         , responseListTrialComponents $
--             mkListTrialComponentsResponse
--
--         , responseDescribeEndpointConfig $
--             mkDescribeEndpointConfigResponse
--
--         , responseDescribeApp $
--             mkDescribeAppResponse
--
--         , responseListImageVersions $
--             mkListImageVersionsResponse
--
--         , responseDescribeAutoMLJob $
--             mkDescribeAutoMLJobResponse
--
--         , responseStopProcessingJob $
--             mkStopProcessingJobResponse
--
--         , responseListLabelingJobsForWorkteam $
--             mkListLabelingJobsForWorkteamResponse
--
--         , responseCreateTransformJob $
--             mkCreateTransformJobResponse
--
--         , responseListCompilationJobs $
--             mkListCompilationJobsResponse
--
--         , responseDisassociateTrialComponent $
--             mkDisassociateTrialComponentResponse
--
--         , responseStopHyperParameterTuningJob $
--             mkStopHyperParameterTuningJobResponse
--
--         , responseListHumanTaskUis $
--             mkListHumanTaskUisResponse
--
--         , responseCreateEndpoint $
--             mkCreateEndpointResponse
--
--         , responseGetSearchSuggestions $
--             mkGetSearchSuggestionsResponse
--
--         , responseDescribeTrial $
--             mkDescribeTrialResponse
--
--         , responseCreatePresignedDomainUrl $
--             mkCreatePresignedDomainUrlResponse
--
--         , responseDescribeCodeRepository $
--             mkDescribeCodeRepositoryResponse
--
--         , responseDescribeImage $
--             mkDescribeImageResponse
--
--         , responseDescribeTrainingJob $
--             mkDescribeTrainingJobResponse
--
--         , responseDeleteEndpoint $
--             mkDeleteEndpointResponse
--
--         , responseUpdateEndpoint $
--             mkUpdateEndpointResponse
--
--         , responseCreateHumanTaskUi $
--             mkCreateHumanTaskUiResponse
--
--         , responseCreateCompilationJob $
--             mkCreateCompilationJobResponse
--
--         , responseDeleteAppImageConfig $
--             mkDeleteAppImageConfigResponse
--
--         , responseUpdateAppImageConfig $
--             mkUpdateAppImageConfigResponse
--
--         , responseDeleteNotebookInstanceLifecycleConfig $
--             mkDeleteNotebookInstanceLifecycleConfigResponse
--
--         , responseUpdateNotebookInstanceLifecycleConfig $
--             mkUpdateNotebookInstanceLifecycleConfigResponse
--
--         , responseDeleteWorkforce $
--             mkDeleteWorkforceResponse
--
--         , responseUpdateWorkforce $
--             mkUpdateWorkforceResponse
--
--         , responseListProcessingJobs $
--             mkListProcessingJobsResponse
--
--         , responseCreateLabelingJob $
--             mkCreateLabelingJobResponse
--
--         , responseDescribeNotebookInstance $
--             mkDescribeNotebookInstanceResponse
--
--         , responseCreateMonitoringSchedule $
--             mkCreateMonitoringScheduleResponse
--
--         , responseListAppImageConfigs $
--             mkListAppImageConfigsResponse
--
--         , responseCreateEndpointConfig $
--             mkCreateEndpointConfigResponse
--
--         , responseStopNotebookInstance $
--             mkStopNotebookInstanceResponse
--
--         , responseUpdateEndpointWeightsAndCapacities $
--             mkUpdateEndpointWeightsAndCapacitiesResponse
--
--         , responseCreateAppImageConfig $
--             mkCreateAppImageConfigResponse
--
--         , responseDeleteTags $
--             mkDeleteTagsResponse
--
--         , responseListExperiments $
--             mkListExperimentsResponse
--
--         , responseListAutoMLJobs $
--             mkListAutoMLJobsResponse
--
--         , responseListApps $
--             mkListAppsResponse
--
--         , responseCreateProcessingJob $
--             mkCreateProcessingJobResponse
--
--         , responseDeleteMonitoringSchedule $
--             mkDeleteMonitoringScheduleResponse
--
--         , responseDescribeModelPackage $
--             mkDescribeModelPackageResponse
--
--         , responseDeleteEndpointConfig $
--             mkDeleteEndpointConfigResponse
--
--         , responseUpdateMonitoringSchedule $
--             mkUpdateMonitoringScheduleResponse
--
--         , responseDeleteApp $
--             mkDeleteAppResponse
--
--         , responseCreateAlgorithm $
--             mkCreateAlgorithmResponse
--
--         , responseStopTransformJob $
--             mkStopTransformJobResponse
--
--         , responseCreateModel $
--             mkCreateModelResponse
--
--         , responseListUserProfiles $
--             mkListUserProfilesResponse
--
--         , responseCreateCodeRepository $
--             mkCreateCodeRepositoryResponse
--
--         , responseCreateHyperParameterTuningJob $
--             mkCreateHyperParameterTuningJobResponse
--
--         , responseDeleteTrial $
--             mkDeleteTrialResponse
--
--         , responseUpdateTrial $
--             mkUpdateTrialResponse
--
--         , responseListCodeRepositories $
--             mkListCodeRepositoriesResponse
--
--         , responseDescribeCompilationJob $
--             mkDescribeCompilationJobResponse
--
--         , responseListHyperParameterTuningJobs $
--             mkListHyperParameterTuningJobsResponse
--
--         , responseListAlgorithms $
--             mkListAlgorithmsResponse
--
--         , responseRenderUiTemplate $
--             mkRenderUiTemplateResponse
--
--         , responseDeleteFlowDefinition $
--             mkDeleteFlowDefinitionResponse
--
--         , responseCreateTrial $
--             mkCreateTrialResponse
--
--         , responseDeleteModel $
--             mkDeleteModelResponse
--
--         , responseListModels $
--             mkListModelsResponse
--
--         , responseDeleteAlgorithm $
--             mkDeleteAlgorithmResponse
--
--         , responseAssociateTrialComponent $
--             mkAssociateTrialComponentResponse
--
--         , responseDescribeNotebookInstanceLifecycleConfig $
--             mkDescribeNotebookInstanceLifecycleConfigResponse
--
--         , responseDescribeWorkforce $
--             mkDescribeWorkforceResponse
--
--         , responseCreateModelPackage $
--             mkCreateModelPackageResponse
--
--         , responseStopMonitoringSchedule $
--             mkStopMonitoringScheduleResponse
--
--         , responseDescribeAppImageConfig $
--             mkDescribeAppImageConfigResponse
--
--         , responseListNotebookInstances $
--             mkListNotebookInstancesResponse
--
--         , responseStopLabelingJob $
--             mkStopLabelingJobResponse
--
--         , responseDeleteNotebookInstance $
--             mkDeleteNotebookInstanceResponse
--
--         , responseUpdateNotebookInstance $
--             mkUpdateNotebookInstanceResponse
--
--         , responseListModelPackages $
--             mkListModelPackagesResponse
--
--         , responseDeleteImageVersion $
--             mkDeleteImageVersionResponse
--
--         , responseDescribeExperiment $
--             mkDescribeExperimentResponse
--
--         , responseDeleteTrialComponent $
--             mkDeleteTrialComponentResponse
--
--         , responseUpdateTrialComponent $
--             mkUpdateTrialComponentResponse
--
--         , responseDescribeLabelingJob $
--             mkDescribeLabelingJobResponse
--
--         , responseCreateDomain $
--             mkCreateDomainResponse
--
--         , responseDescribeUserProfile $
--             mkDescribeUserProfileResponse
--
--         , responseListMonitoringExecutions $
--             mkListMonitoringExecutionsResponse
--
--         , responseDeleteHumanTaskUi $
--             mkDeleteHumanTaskUiResponse
--
--         , responseStopTrainingJob $
--             mkStopTrainingJobResponse
--
--         , responseDescribeAlgorithm $
--             mkDescribeAlgorithmResponse
--
--         , responseDescribeModel $
--             mkDescribeModelResponse
--
--         , responseListTransformJobs $
--             mkListTransformJobsResponse
--
--         , responseDescribeHyperParameterTuningJob $
--             mkDescribeHyperParameterTuningJobResponse
--
--         , responseListEndpoints $
--             mkListEndpointsResponse
--
--         , responseDescribeFlowDefinition $
--             mkDescribeFlowDefinitionResponse
--
--         , responseCreatePresignedNotebookInstanceUrl $
--             mkCreatePresignedNotebookInstanceUrlResponse
--
--         , responseListTrainingJobsForHyperParameterTuningJob $
--             mkListTrainingJobsForHyperParameterTuningJobResponse
--
--         , responseDescribeDomain $
--             mkDescribeDomainResponse
--
--         , responseUpdateWorkteam $
--             mkUpdateWorkteamResponse
--
--         , responseDeleteWorkteam $
--             mkDeleteWorkteamResponse
--
--         , responseListWorkteams $
--             mkListWorkteamsResponse
--
--         , responseCreateAutoMLJob $
--             mkCreateAutoMLJobResponse
--
--         , responseCreateApp $
--             mkCreateAppResponse
--
--         , responseCreateExperiment $
--             mkCreateExperimentResponse
--
--         , responseListNotebookInstanceLifecycleConfigs $
--             mkListNotebookInstanceLifecycleConfigsResponse
--
--         , responseListWorkforces $
--             mkListWorkforcesResponse
--
--         , responseDescribeSubscribedWorkteam $
--             mkDescribeSubscribedWorkteamResponse
--
--         , responseCreateWorkteam $
--             mkCreateWorkteamResponse
--
--         , responseCreateNotebookInstanceLifecycleConfig $
--             mkCreateNotebookInstanceLifecycleConfigResponse
--
--         , responseListMonitoringSchedules $
--             mkListMonitoringSchedulesResponse
--
--         , responseListLabelingJobs $
--             mkListLabelingJobsResponse
--
--         , responseStartNotebookInstance $
--             mkStartNotebookInstanceResponse
--
--         , responseUpdateExperiment $
--             mkUpdateExperimentResponse
--
--         , responseDeleteExperiment $
--             mkDeleteExperimentResponse
--
--         , responseAddTags $
--             mkAddTagsResponse
--
--         , responseCreateWorkforce $
--             mkCreateWorkforceResponse
--
--         , responseDescribeTrialComponent $
--             mkDescribeTrialComponentResponse
--
--         , responseDescribeImageVersion $
--             mkDescribeImageVersionResponse
--
--         , responseListEndpointConfigs $
--             mkListEndpointConfigsResponse
--
--         , responseCreateFlowDefinition $
--             mkCreateFlowDefinitionResponse
--
--         , responseListTags $
--             mkListTagsResponse
--
--         , responseDescribeHumanTaskUi $
--             mkDescribeHumanTaskUiResponse
--
--         , responseCreateTrainingJob $
--             mkCreateTrainingJobResponse
--
--         , responseDeleteUserProfile $
--             mkDeleteUserProfileResponse
--
--         , responseUpdateUserProfile $
--             mkUpdateUserProfileResponse
--
--         , responseCreateImage $
--             mkCreateImageResponse
--
--         , responseListTrials $
--             mkListTrialsResponse
--
--         , responseStopCompilationJob $
--             mkStopCompilationJobResponse
--
--         , responseListImages $
--             mkListImagesResponse
--
--         , responseCreateUserProfile $
--             mkCreateUserProfileResponse
--
--         , responseSearch $
--             mkSearchResponse
--
--         , responseUpdateCodeRepository $
--             mkUpdateCodeRepositoryResponse
--
--         , responseDeleteCodeRepository $
--             mkDeleteCodeRepositoryResponse
--
--         , responseDescribeTransformJob $
--             mkDescribeTransformJobResponse
--
--         , responseListCandidatesForAutoMLJob $
--             mkListCandidatesForAutoMLJobResponse
--
--         , responseDeleteImage $
--             mkDeleteImageResponse
--
--         , responseUpdateImage $
--             mkUpdateImageResponse
--
--         , responseListFlowDefinitions $
--             mkListFlowDefinitionsResponse
--
--         , responseDescribeEndpoint $
--             mkDescribeEndpointResponse
--
--         , responseListTrainingJobs $
--             mkListTrainingJobsResponse
--
--         , responseDescribeWorkteam $
--             mkDescribeWorkteamResponse
--
--         , responseListSubscribedWorkteams $
--             mkListSubscribedWorkteamsResponse
--
--         , responseDeleteDomain $
--             mkDeleteDomainResponse
--
--         , responseUpdateDomain $
--             mkUpdateDomainResponse
--
--         , responseListDomains $
--             mkListDomainsResponse
--
--         , responseCreateImageVersion $
--             mkCreateImageVersionResponse
--
--         , responseStartMonitoringSchedule $
--             mkStartMonitoringScheduleResponse
--
--         , responseStopAutoMLJob $
--             mkStopAutoMLJobResponse
--
--         , responseCreateTrialComponent $
--             mkCreateTrialComponentResponse
--
--         , responseDescribeProcessingJob $
--             mkDescribeProcessingJobResponse
--
--           ]
--     ]

-- Requests

requestCreateNotebookInstance :: CreateNotebookInstance -> TestTree
requestCreateNotebookInstance = req
    "CreateNotebookInstance"
    "fixture/CreateNotebookInstance.yaml"

requestDeleteModelPackage :: DeleteModelPackage -> TestTree
requestDeleteModelPackage = req
    "DeleteModelPackage"
    "fixture/DeleteModelPackage.yaml"

requestDescribeMonitoringSchedule :: DescribeMonitoringSchedule -> TestTree
requestDescribeMonitoringSchedule = req
    "DescribeMonitoringSchedule"
    "fixture/DescribeMonitoringSchedule.yaml"

requestListTrialComponents :: ListTrialComponents -> TestTree
requestListTrialComponents = req
    "ListTrialComponents"
    "fixture/ListTrialComponents.yaml"

requestDescribeEndpointConfig :: DescribeEndpointConfig -> TestTree
requestDescribeEndpointConfig = req
    "DescribeEndpointConfig"
    "fixture/DescribeEndpointConfig.yaml"

requestDescribeApp :: DescribeApp -> TestTree
requestDescribeApp = req
    "DescribeApp"
    "fixture/DescribeApp.yaml"

requestListImageVersions :: ListImageVersions -> TestTree
requestListImageVersions = req
    "ListImageVersions"
    "fixture/ListImageVersions.yaml"

requestDescribeAutoMLJob :: DescribeAutoMLJob -> TestTree
requestDescribeAutoMLJob = req
    "DescribeAutoMLJob"
    "fixture/DescribeAutoMLJob.yaml"

requestStopProcessingJob :: StopProcessingJob -> TestTree
requestStopProcessingJob = req
    "StopProcessingJob"
    "fixture/StopProcessingJob.yaml"

requestListLabelingJobsForWorkteam :: ListLabelingJobsForWorkteam -> TestTree
requestListLabelingJobsForWorkteam = req
    "ListLabelingJobsForWorkteam"
    "fixture/ListLabelingJobsForWorkteam.yaml"

requestCreateTransformJob :: CreateTransformJob -> TestTree
requestCreateTransformJob = req
    "CreateTransformJob"
    "fixture/CreateTransformJob.yaml"

requestListCompilationJobs :: ListCompilationJobs -> TestTree
requestListCompilationJobs = req
    "ListCompilationJobs"
    "fixture/ListCompilationJobs.yaml"

requestDisassociateTrialComponent :: DisassociateTrialComponent -> TestTree
requestDisassociateTrialComponent = req
    "DisassociateTrialComponent"
    "fixture/DisassociateTrialComponent.yaml"

requestStopHyperParameterTuningJob :: StopHyperParameterTuningJob -> TestTree
requestStopHyperParameterTuningJob = req
    "StopHyperParameterTuningJob"
    "fixture/StopHyperParameterTuningJob.yaml"

requestListHumanTaskUis :: ListHumanTaskUis -> TestTree
requestListHumanTaskUis = req
    "ListHumanTaskUis"
    "fixture/ListHumanTaskUis.yaml"

requestCreateEndpoint :: CreateEndpoint -> TestTree
requestCreateEndpoint = req
    "CreateEndpoint"
    "fixture/CreateEndpoint.yaml"

requestGetSearchSuggestions :: GetSearchSuggestions -> TestTree
requestGetSearchSuggestions = req
    "GetSearchSuggestions"
    "fixture/GetSearchSuggestions.yaml"

requestDescribeTrial :: DescribeTrial -> TestTree
requestDescribeTrial = req
    "DescribeTrial"
    "fixture/DescribeTrial.yaml"

requestCreatePresignedDomainUrl :: CreatePresignedDomainUrl -> TestTree
requestCreatePresignedDomainUrl = req
    "CreatePresignedDomainUrl"
    "fixture/CreatePresignedDomainUrl.yaml"

requestDescribeCodeRepository :: DescribeCodeRepository -> TestTree
requestDescribeCodeRepository = req
    "DescribeCodeRepository"
    "fixture/DescribeCodeRepository.yaml"

requestDescribeImage :: DescribeImage -> TestTree
requestDescribeImage = req
    "DescribeImage"
    "fixture/DescribeImage.yaml"

requestDescribeTrainingJob :: DescribeTrainingJob -> TestTree
requestDescribeTrainingJob = req
    "DescribeTrainingJob"
    "fixture/DescribeTrainingJob.yaml"

requestDeleteEndpoint :: DeleteEndpoint -> TestTree
requestDeleteEndpoint = req
    "DeleteEndpoint"
    "fixture/DeleteEndpoint.yaml"

requestUpdateEndpoint :: UpdateEndpoint -> TestTree
requestUpdateEndpoint = req
    "UpdateEndpoint"
    "fixture/UpdateEndpoint.yaml"

requestCreateHumanTaskUi :: CreateHumanTaskUi -> TestTree
requestCreateHumanTaskUi = req
    "CreateHumanTaskUi"
    "fixture/CreateHumanTaskUi.yaml"

requestCreateCompilationJob :: CreateCompilationJob -> TestTree
requestCreateCompilationJob = req
    "CreateCompilationJob"
    "fixture/CreateCompilationJob.yaml"

requestDeleteAppImageConfig :: DeleteAppImageConfig -> TestTree
requestDeleteAppImageConfig = req
    "DeleteAppImageConfig"
    "fixture/DeleteAppImageConfig.yaml"

requestUpdateAppImageConfig :: UpdateAppImageConfig -> TestTree
requestUpdateAppImageConfig = req
    "UpdateAppImageConfig"
    "fixture/UpdateAppImageConfig.yaml"

requestDeleteNotebookInstanceLifecycleConfig :: DeleteNotebookInstanceLifecycleConfig -> TestTree
requestDeleteNotebookInstanceLifecycleConfig = req
    "DeleteNotebookInstanceLifecycleConfig"
    "fixture/DeleteNotebookInstanceLifecycleConfig.yaml"

requestUpdateNotebookInstanceLifecycleConfig :: UpdateNotebookInstanceLifecycleConfig -> TestTree
requestUpdateNotebookInstanceLifecycleConfig = req
    "UpdateNotebookInstanceLifecycleConfig"
    "fixture/UpdateNotebookInstanceLifecycleConfig.yaml"

requestDeleteWorkforce :: DeleteWorkforce -> TestTree
requestDeleteWorkforce = req
    "DeleteWorkforce"
    "fixture/DeleteWorkforce.yaml"

requestUpdateWorkforce :: UpdateWorkforce -> TestTree
requestUpdateWorkforce = req
    "UpdateWorkforce"
    "fixture/UpdateWorkforce.yaml"

requestListProcessingJobs :: ListProcessingJobs -> TestTree
requestListProcessingJobs = req
    "ListProcessingJobs"
    "fixture/ListProcessingJobs.yaml"

requestCreateLabelingJob :: CreateLabelingJob -> TestTree
requestCreateLabelingJob = req
    "CreateLabelingJob"
    "fixture/CreateLabelingJob.yaml"

requestDescribeNotebookInstance :: DescribeNotebookInstance -> TestTree
requestDescribeNotebookInstance = req
    "DescribeNotebookInstance"
    "fixture/DescribeNotebookInstance.yaml"

requestCreateMonitoringSchedule :: CreateMonitoringSchedule -> TestTree
requestCreateMonitoringSchedule = req
    "CreateMonitoringSchedule"
    "fixture/CreateMonitoringSchedule.yaml"

requestListAppImageConfigs :: ListAppImageConfigs -> TestTree
requestListAppImageConfigs = req
    "ListAppImageConfigs"
    "fixture/ListAppImageConfigs.yaml"

requestCreateEndpointConfig :: CreateEndpointConfig -> TestTree
requestCreateEndpointConfig = req
    "CreateEndpointConfig"
    "fixture/CreateEndpointConfig.yaml"

requestStopNotebookInstance :: StopNotebookInstance -> TestTree
requestStopNotebookInstance = req
    "StopNotebookInstance"
    "fixture/StopNotebookInstance.yaml"

requestUpdateEndpointWeightsAndCapacities :: UpdateEndpointWeightsAndCapacities -> TestTree
requestUpdateEndpointWeightsAndCapacities = req
    "UpdateEndpointWeightsAndCapacities"
    "fixture/UpdateEndpointWeightsAndCapacities.yaml"

requestCreateAppImageConfig :: CreateAppImageConfig -> TestTree
requestCreateAppImageConfig = req
    "CreateAppImageConfig"
    "fixture/CreateAppImageConfig.yaml"

requestDeleteTags :: DeleteTags -> TestTree
requestDeleteTags = req
    "DeleteTags"
    "fixture/DeleteTags.yaml"

requestListExperiments :: ListExperiments -> TestTree
requestListExperiments = req
    "ListExperiments"
    "fixture/ListExperiments.yaml"

requestListAutoMLJobs :: ListAutoMLJobs -> TestTree
requestListAutoMLJobs = req
    "ListAutoMLJobs"
    "fixture/ListAutoMLJobs.yaml"

requestListApps :: ListApps -> TestTree
requestListApps = req
    "ListApps"
    "fixture/ListApps.yaml"

requestCreateProcessingJob :: CreateProcessingJob -> TestTree
requestCreateProcessingJob = req
    "CreateProcessingJob"
    "fixture/CreateProcessingJob.yaml"

requestDeleteMonitoringSchedule :: DeleteMonitoringSchedule -> TestTree
requestDeleteMonitoringSchedule = req
    "DeleteMonitoringSchedule"
    "fixture/DeleteMonitoringSchedule.yaml"

requestDescribeModelPackage :: DescribeModelPackage -> TestTree
requestDescribeModelPackage = req
    "DescribeModelPackage"
    "fixture/DescribeModelPackage.yaml"

requestDeleteEndpointConfig :: DeleteEndpointConfig -> TestTree
requestDeleteEndpointConfig = req
    "DeleteEndpointConfig"
    "fixture/DeleteEndpointConfig.yaml"

requestUpdateMonitoringSchedule :: UpdateMonitoringSchedule -> TestTree
requestUpdateMonitoringSchedule = req
    "UpdateMonitoringSchedule"
    "fixture/UpdateMonitoringSchedule.yaml"

requestDeleteApp :: DeleteApp -> TestTree
requestDeleteApp = req
    "DeleteApp"
    "fixture/DeleteApp.yaml"

requestCreateAlgorithm :: CreateAlgorithm -> TestTree
requestCreateAlgorithm = req
    "CreateAlgorithm"
    "fixture/CreateAlgorithm.yaml"

requestStopTransformJob :: StopTransformJob -> TestTree
requestStopTransformJob = req
    "StopTransformJob"
    "fixture/StopTransformJob.yaml"

requestCreateModel :: CreateModel -> TestTree
requestCreateModel = req
    "CreateModel"
    "fixture/CreateModel.yaml"

requestListUserProfiles :: ListUserProfiles -> TestTree
requestListUserProfiles = req
    "ListUserProfiles"
    "fixture/ListUserProfiles.yaml"

requestCreateCodeRepository :: CreateCodeRepository -> TestTree
requestCreateCodeRepository = req
    "CreateCodeRepository"
    "fixture/CreateCodeRepository.yaml"

requestCreateHyperParameterTuningJob :: CreateHyperParameterTuningJob -> TestTree
requestCreateHyperParameterTuningJob = req
    "CreateHyperParameterTuningJob"
    "fixture/CreateHyperParameterTuningJob.yaml"

requestDeleteTrial :: DeleteTrial -> TestTree
requestDeleteTrial = req
    "DeleteTrial"
    "fixture/DeleteTrial.yaml"

requestUpdateTrial :: UpdateTrial -> TestTree
requestUpdateTrial = req
    "UpdateTrial"
    "fixture/UpdateTrial.yaml"

requestListCodeRepositories :: ListCodeRepositories -> TestTree
requestListCodeRepositories = req
    "ListCodeRepositories"
    "fixture/ListCodeRepositories.yaml"

requestDescribeCompilationJob :: DescribeCompilationJob -> TestTree
requestDescribeCompilationJob = req
    "DescribeCompilationJob"
    "fixture/DescribeCompilationJob.yaml"

requestListHyperParameterTuningJobs :: ListHyperParameterTuningJobs -> TestTree
requestListHyperParameterTuningJobs = req
    "ListHyperParameterTuningJobs"
    "fixture/ListHyperParameterTuningJobs.yaml"

requestListAlgorithms :: ListAlgorithms -> TestTree
requestListAlgorithms = req
    "ListAlgorithms"
    "fixture/ListAlgorithms.yaml"

requestRenderUiTemplate :: RenderUiTemplate -> TestTree
requestRenderUiTemplate = req
    "RenderUiTemplate"
    "fixture/RenderUiTemplate.yaml"

requestDeleteFlowDefinition :: DeleteFlowDefinition -> TestTree
requestDeleteFlowDefinition = req
    "DeleteFlowDefinition"
    "fixture/DeleteFlowDefinition.yaml"

requestCreateTrial :: CreateTrial -> TestTree
requestCreateTrial = req
    "CreateTrial"
    "fixture/CreateTrial.yaml"

requestDeleteModel :: DeleteModel -> TestTree
requestDeleteModel = req
    "DeleteModel"
    "fixture/DeleteModel.yaml"

requestListModels :: ListModels -> TestTree
requestListModels = req
    "ListModels"
    "fixture/ListModels.yaml"

requestDeleteAlgorithm :: DeleteAlgorithm -> TestTree
requestDeleteAlgorithm = req
    "DeleteAlgorithm"
    "fixture/DeleteAlgorithm.yaml"

requestAssociateTrialComponent :: AssociateTrialComponent -> TestTree
requestAssociateTrialComponent = req
    "AssociateTrialComponent"
    "fixture/AssociateTrialComponent.yaml"

requestDescribeNotebookInstanceLifecycleConfig :: DescribeNotebookInstanceLifecycleConfig -> TestTree
requestDescribeNotebookInstanceLifecycleConfig = req
    "DescribeNotebookInstanceLifecycleConfig"
    "fixture/DescribeNotebookInstanceLifecycleConfig.yaml"

requestDescribeWorkforce :: DescribeWorkforce -> TestTree
requestDescribeWorkforce = req
    "DescribeWorkforce"
    "fixture/DescribeWorkforce.yaml"

requestCreateModelPackage :: CreateModelPackage -> TestTree
requestCreateModelPackage = req
    "CreateModelPackage"
    "fixture/CreateModelPackage.yaml"

requestStopMonitoringSchedule :: StopMonitoringSchedule -> TestTree
requestStopMonitoringSchedule = req
    "StopMonitoringSchedule"
    "fixture/StopMonitoringSchedule.yaml"

requestDescribeAppImageConfig :: DescribeAppImageConfig -> TestTree
requestDescribeAppImageConfig = req
    "DescribeAppImageConfig"
    "fixture/DescribeAppImageConfig.yaml"

requestListNotebookInstances :: ListNotebookInstances -> TestTree
requestListNotebookInstances = req
    "ListNotebookInstances"
    "fixture/ListNotebookInstances.yaml"

requestStopLabelingJob :: StopLabelingJob -> TestTree
requestStopLabelingJob = req
    "StopLabelingJob"
    "fixture/StopLabelingJob.yaml"

requestDeleteNotebookInstance :: DeleteNotebookInstance -> TestTree
requestDeleteNotebookInstance = req
    "DeleteNotebookInstance"
    "fixture/DeleteNotebookInstance.yaml"

requestUpdateNotebookInstance :: UpdateNotebookInstance -> TestTree
requestUpdateNotebookInstance = req
    "UpdateNotebookInstance"
    "fixture/UpdateNotebookInstance.yaml"

requestListModelPackages :: ListModelPackages -> TestTree
requestListModelPackages = req
    "ListModelPackages"
    "fixture/ListModelPackages.yaml"

requestDeleteImageVersion :: DeleteImageVersion -> TestTree
requestDeleteImageVersion = req
    "DeleteImageVersion"
    "fixture/DeleteImageVersion.yaml"

requestDescribeExperiment :: DescribeExperiment -> TestTree
requestDescribeExperiment = req
    "DescribeExperiment"
    "fixture/DescribeExperiment.yaml"

requestDeleteTrialComponent :: DeleteTrialComponent -> TestTree
requestDeleteTrialComponent = req
    "DeleteTrialComponent"
    "fixture/DeleteTrialComponent.yaml"

requestUpdateTrialComponent :: UpdateTrialComponent -> TestTree
requestUpdateTrialComponent = req
    "UpdateTrialComponent"
    "fixture/UpdateTrialComponent.yaml"

requestDescribeLabelingJob :: DescribeLabelingJob -> TestTree
requestDescribeLabelingJob = req
    "DescribeLabelingJob"
    "fixture/DescribeLabelingJob.yaml"

requestCreateDomain :: CreateDomain -> TestTree
requestCreateDomain = req
    "CreateDomain"
    "fixture/CreateDomain.yaml"

requestDescribeUserProfile :: DescribeUserProfile -> TestTree
requestDescribeUserProfile = req
    "DescribeUserProfile"
    "fixture/DescribeUserProfile.yaml"

requestListMonitoringExecutions :: ListMonitoringExecutions -> TestTree
requestListMonitoringExecutions = req
    "ListMonitoringExecutions"
    "fixture/ListMonitoringExecutions.yaml"

requestDeleteHumanTaskUi :: DeleteHumanTaskUi -> TestTree
requestDeleteHumanTaskUi = req
    "DeleteHumanTaskUi"
    "fixture/DeleteHumanTaskUi.yaml"

requestStopTrainingJob :: StopTrainingJob -> TestTree
requestStopTrainingJob = req
    "StopTrainingJob"
    "fixture/StopTrainingJob.yaml"

requestDescribeAlgorithm :: DescribeAlgorithm -> TestTree
requestDescribeAlgorithm = req
    "DescribeAlgorithm"
    "fixture/DescribeAlgorithm.yaml"

requestDescribeModel :: DescribeModel -> TestTree
requestDescribeModel = req
    "DescribeModel"
    "fixture/DescribeModel.yaml"

requestListTransformJobs :: ListTransformJobs -> TestTree
requestListTransformJobs = req
    "ListTransformJobs"
    "fixture/ListTransformJobs.yaml"

requestDescribeHyperParameterTuningJob :: DescribeHyperParameterTuningJob -> TestTree
requestDescribeHyperParameterTuningJob = req
    "DescribeHyperParameterTuningJob"
    "fixture/DescribeHyperParameterTuningJob.yaml"

requestListEndpoints :: ListEndpoints -> TestTree
requestListEndpoints = req
    "ListEndpoints"
    "fixture/ListEndpoints.yaml"

requestDescribeFlowDefinition :: DescribeFlowDefinition -> TestTree
requestDescribeFlowDefinition = req
    "DescribeFlowDefinition"
    "fixture/DescribeFlowDefinition.yaml"

requestCreatePresignedNotebookInstanceUrl :: CreatePresignedNotebookInstanceUrl -> TestTree
requestCreatePresignedNotebookInstanceUrl = req
    "CreatePresignedNotebookInstanceUrl"
    "fixture/CreatePresignedNotebookInstanceUrl.yaml"

requestListTrainingJobsForHyperParameterTuningJob :: ListTrainingJobsForHyperParameterTuningJob -> TestTree
requestListTrainingJobsForHyperParameterTuningJob = req
    "ListTrainingJobsForHyperParameterTuningJob"
    "fixture/ListTrainingJobsForHyperParameterTuningJob.yaml"

requestDescribeDomain :: DescribeDomain -> TestTree
requestDescribeDomain = req
    "DescribeDomain"
    "fixture/DescribeDomain.yaml"

requestUpdateWorkteam :: UpdateWorkteam -> TestTree
requestUpdateWorkteam = req
    "UpdateWorkteam"
    "fixture/UpdateWorkteam.yaml"

requestDeleteWorkteam :: DeleteWorkteam -> TestTree
requestDeleteWorkteam = req
    "DeleteWorkteam"
    "fixture/DeleteWorkteam.yaml"

requestListWorkteams :: ListWorkteams -> TestTree
requestListWorkteams = req
    "ListWorkteams"
    "fixture/ListWorkteams.yaml"

requestCreateAutoMLJob :: CreateAutoMLJob -> TestTree
requestCreateAutoMLJob = req
    "CreateAutoMLJob"
    "fixture/CreateAutoMLJob.yaml"

requestCreateApp :: CreateApp -> TestTree
requestCreateApp = req
    "CreateApp"
    "fixture/CreateApp.yaml"

requestCreateExperiment :: CreateExperiment -> TestTree
requestCreateExperiment = req
    "CreateExperiment"
    "fixture/CreateExperiment.yaml"

requestListNotebookInstanceLifecycleConfigs :: ListNotebookInstanceLifecycleConfigs -> TestTree
requestListNotebookInstanceLifecycleConfigs = req
    "ListNotebookInstanceLifecycleConfigs"
    "fixture/ListNotebookInstanceLifecycleConfigs.yaml"

requestListWorkforces :: ListWorkforces -> TestTree
requestListWorkforces = req
    "ListWorkforces"
    "fixture/ListWorkforces.yaml"

requestDescribeSubscribedWorkteam :: DescribeSubscribedWorkteam -> TestTree
requestDescribeSubscribedWorkteam = req
    "DescribeSubscribedWorkteam"
    "fixture/DescribeSubscribedWorkteam.yaml"

requestCreateWorkteam :: CreateWorkteam -> TestTree
requestCreateWorkteam = req
    "CreateWorkteam"
    "fixture/CreateWorkteam.yaml"

requestCreateNotebookInstanceLifecycleConfig :: CreateNotebookInstanceLifecycleConfig -> TestTree
requestCreateNotebookInstanceLifecycleConfig = req
    "CreateNotebookInstanceLifecycleConfig"
    "fixture/CreateNotebookInstanceLifecycleConfig.yaml"

requestListMonitoringSchedules :: ListMonitoringSchedules -> TestTree
requestListMonitoringSchedules = req
    "ListMonitoringSchedules"
    "fixture/ListMonitoringSchedules.yaml"

requestListLabelingJobs :: ListLabelingJobs -> TestTree
requestListLabelingJobs = req
    "ListLabelingJobs"
    "fixture/ListLabelingJobs.yaml"

requestStartNotebookInstance :: StartNotebookInstance -> TestTree
requestStartNotebookInstance = req
    "StartNotebookInstance"
    "fixture/StartNotebookInstance.yaml"

requestUpdateExperiment :: UpdateExperiment -> TestTree
requestUpdateExperiment = req
    "UpdateExperiment"
    "fixture/UpdateExperiment.yaml"

requestDeleteExperiment :: DeleteExperiment -> TestTree
requestDeleteExperiment = req
    "DeleteExperiment"
    "fixture/DeleteExperiment.yaml"

requestAddTags :: AddTags -> TestTree
requestAddTags = req
    "AddTags"
    "fixture/AddTags.yaml"

requestCreateWorkforce :: CreateWorkforce -> TestTree
requestCreateWorkforce = req
    "CreateWorkforce"
    "fixture/CreateWorkforce.yaml"

requestDescribeTrialComponent :: DescribeTrialComponent -> TestTree
requestDescribeTrialComponent = req
    "DescribeTrialComponent"
    "fixture/DescribeTrialComponent.yaml"

requestDescribeImageVersion :: DescribeImageVersion -> TestTree
requestDescribeImageVersion = req
    "DescribeImageVersion"
    "fixture/DescribeImageVersion.yaml"

requestListEndpointConfigs :: ListEndpointConfigs -> TestTree
requestListEndpointConfigs = req
    "ListEndpointConfigs"
    "fixture/ListEndpointConfigs.yaml"

requestCreateFlowDefinition :: CreateFlowDefinition -> TestTree
requestCreateFlowDefinition = req
    "CreateFlowDefinition"
    "fixture/CreateFlowDefinition.yaml"

requestListTags :: ListTags -> TestTree
requestListTags = req
    "ListTags"
    "fixture/ListTags.yaml"

requestDescribeHumanTaskUi :: DescribeHumanTaskUi -> TestTree
requestDescribeHumanTaskUi = req
    "DescribeHumanTaskUi"
    "fixture/DescribeHumanTaskUi.yaml"

requestCreateTrainingJob :: CreateTrainingJob -> TestTree
requestCreateTrainingJob = req
    "CreateTrainingJob"
    "fixture/CreateTrainingJob.yaml"

requestDeleteUserProfile :: DeleteUserProfile -> TestTree
requestDeleteUserProfile = req
    "DeleteUserProfile"
    "fixture/DeleteUserProfile.yaml"

requestUpdateUserProfile :: UpdateUserProfile -> TestTree
requestUpdateUserProfile = req
    "UpdateUserProfile"
    "fixture/UpdateUserProfile.yaml"

requestCreateImage :: CreateImage -> TestTree
requestCreateImage = req
    "CreateImage"
    "fixture/CreateImage.yaml"

requestListTrials :: ListTrials -> TestTree
requestListTrials = req
    "ListTrials"
    "fixture/ListTrials.yaml"

requestStopCompilationJob :: StopCompilationJob -> TestTree
requestStopCompilationJob = req
    "StopCompilationJob"
    "fixture/StopCompilationJob.yaml"

requestListImages :: ListImages -> TestTree
requestListImages = req
    "ListImages"
    "fixture/ListImages.yaml"

requestCreateUserProfile :: CreateUserProfile -> TestTree
requestCreateUserProfile = req
    "CreateUserProfile"
    "fixture/CreateUserProfile.yaml"

requestSearch :: Search -> TestTree
requestSearch = req
    "Search"
    "fixture/Search.yaml"

requestUpdateCodeRepository :: UpdateCodeRepository -> TestTree
requestUpdateCodeRepository = req
    "UpdateCodeRepository"
    "fixture/UpdateCodeRepository.yaml"

requestDeleteCodeRepository :: DeleteCodeRepository -> TestTree
requestDeleteCodeRepository = req
    "DeleteCodeRepository"
    "fixture/DeleteCodeRepository.yaml"

requestDescribeTransformJob :: DescribeTransformJob -> TestTree
requestDescribeTransformJob = req
    "DescribeTransformJob"
    "fixture/DescribeTransformJob.yaml"

requestListCandidatesForAutoMLJob :: ListCandidatesForAutoMLJob -> TestTree
requestListCandidatesForAutoMLJob = req
    "ListCandidatesForAutoMLJob"
    "fixture/ListCandidatesForAutoMLJob.yaml"

requestDeleteImage :: DeleteImage -> TestTree
requestDeleteImage = req
    "DeleteImage"
    "fixture/DeleteImage.yaml"

requestUpdateImage :: UpdateImage -> TestTree
requestUpdateImage = req
    "UpdateImage"
    "fixture/UpdateImage.yaml"

requestListFlowDefinitions :: ListFlowDefinitions -> TestTree
requestListFlowDefinitions = req
    "ListFlowDefinitions"
    "fixture/ListFlowDefinitions.yaml"

requestDescribeEndpoint :: DescribeEndpoint -> TestTree
requestDescribeEndpoint = req
    "DescribeEndpoint"
    "fixture/DescribeEndpoint.yaml"

requestListTrainingJobs :: ListTrainingJobs -> TestTree
requestListTrainingJobs = req
    "ListTrainingJobs"
    "fixture/ListTrainingJobs.yaml"

requestDescribeWorkteam :: DescribeWorkteam -> TestTree
requestDescribeWorkteam = req
    "DescribeWorkteam"
    "fixture/DescribeWorkteam.yaml"

requestListSubscribedWorkteams :: ListSubscribedWorkteams -> TestTree
requestListSubscribedWorkteams = req
    "ListSubscribedWorkteams"
    "fixture/ListSubscribedWorkteams.yaml"

requestDeleteDomain :: DeleteDomain -> TestTree
requestDeleteDomain = req
    "DeleteDomain"
    "fixture/DeleteDomain.yaml"

requestUpdateDomain :: UpdateDomain -> TestTree
requestUpdateDomain = req
    "UpdateDomain"
    "fixture/UpdateDomain.yaml"

requestListDomains :: ListDomains -> TestTree
requestListDomains = req
    "ListDomains"
    "fixture/ListDomains.yaml"

requestCreateImageVersion :: CreateImageVersion -> TestTree
requestCreateImageVersion = req
    "CreateImageVersion"
    "fixture/CreateImageVersion.yaml"

requestStartMonitoringSchedule :: StartMonitoringSchedule -> TestTree
requestStartMonitoringSchedule = req
    "StartMonitoringSchedule"
    "fixture/StartMonitoringSchedule.yaml"

requestStopAutoMLJob :: StopAutoMLJob -> TestTree
requestStopAutoMLJob = req
    "StopAutoMLJob"
    "fixture/StopAutoMLJob.yaml"

requestCreateTrialComponent :: CreateTrialComponent -> TestTree
requestCreateTrialComponent = req
    "CreateTrialComponent"
    "fixture/CreateTrialComponent.yaml"

requestDescribeProcessingJob :: DescribeProcessingJob -> TestTree
requestDescribeProcessingJob = req
    "DescribeProcessingJob"
    "fixture/DescribeProcessingJob.yaml"

-- Responses

responseCreateNotebookInstance :: CreateNotebookInstanceResponse -> TestTree
responseCreateNotebookInstance = res
    "CreateNotebookInstanceResponse"
    "fixture/CreateNotebookInstanceResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateNotebookInstance)

responseDeleteModelPackage :: DeleteModelPackageResponse -> TestTree
responseDeleteModelPackage = res
    "DeleteModelPackageResponse"
    "fixture/DeleteModelPackageResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteModelPackage)

responseDescribeMonitoringSchedule :: DescribeMonitoringScheduleResponse -> TestTree
responseDescribeMonitoringSchedule = res
    "DescribeMonitoringScheduleResponse"
    "fixture/DescribeMonitoringScheduleResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeMonitoringSchedule)

responseListTrialComponents :: ListTrialComponentsResponse -> TestTree
responseListTrialComponents = res
    "ListTrialComponentsResponse"
    "fixture/ListTrialComponentsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListTrialComponents)

responseDescribeEndpointConfig :: DescribeEndpointConfigResponse -> TestTree
responseDescribeEndpointConfig = res
    "DescribeEndpointConfigResponse"
    "fixture/DescribeEndpointConfigResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeEndpointConfig)

responseDescribeApp :: DescribeAppResponse -> TestTree
responseDescribeApp = res
    "DescribeAppResponse"
    "fixture/DescribeAppResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeApp)

responseListImageVersions :: ListImageVersionsResponse -> TestTree
responseListImageVersions = res
    "ListImageVersionsResponse"
    "fixture/ListImageVersionsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListImageVersions)

responseDescribeAutoMLJob :: DescribeAutoMLJobResponse -> TestTree
responseDescribeAutoMLJob = res
    "DescribeAutoMLJobResponse"
    "fixture/DescribeAutoMLJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeAutoMLJob)

responseStopProcessingJob :: StopProcessingJobResponse -> TestTree
responseStopProcessingJob = res
    "StopProcessingJobResponse"
    "fixture/StopProcessingJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy StopProcessingJob)

responseListLabelingJobsForWorkteam :: ListLabelingJobsForWorkteamResponse -> TestTree
responseListLabelingJobsForWorkteam = res
    "ListLabelingJobsForWorkteamResponse"
    "fixture/ListLabelingJobsForWorkteamResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListLabelingJobsForWorkteam)

responseCreateTransformJob :: CreateTransformJobResponse -> TestTree
responseCreateTransformJob = res
    "CreateTransformJobResponse"
    "fixture/CreateTransformJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateTransformJob)

responseListCompilationJobs :: ListCompilationJobsResponse -> TestTree
responseListCompilationJobs = res
    "ListCompilationJobsResponse"
    "fixture/ListCompilationJobsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListCompilationJobs)

responseDisassociateTrialComponent :: DisassociateTrialComponentResponse -> TestTree
responseDisassociateTrialComponent = res
    "DisassociateTrialComponentResponse"
    "fixture/DisassociateTrialComponentResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DisassociateTrialComponent)

responseStopHyperParameterTuningJob :: StopHyperParameterTuningJobResponse -> TestTree
responseStopHyperParameterTuningJob = res
    "StopHyperParameterTuningJobResponse"
    "fixture/StopHyperParameterTuningJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy StopHyperParameterTuningJob)

responseListHumanTaskUis :: ListHumanTaskUisResponse -> TestTree
responseListHumanTaskUis = res
    "ListHumanTaskUisResponse"
    "fixture/ListHumanTaskUisResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListHumanTaskUis)

responseCreateEndpoint :: CreateEndpointResponse -> TestTree
responseCreateEndpoint = res
    "CreateEndpointResponse"
    "fixture/CreateEndpointResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateEndpoint)

responseGetSearchSuggestions :: GetSearchSuggestionsResponse -> TestTree
responseGetSearchSuggestions = res
    "GetSearchSuggestionsResponse"
    "fixture/GetSearchSuggestionsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy GetSearchSuggestions)

responseDescribeTrial :: DescribeTrialResponse -> TestTree
responseDescribeTrial = res
    "DescribeTrialResponse"
    "fixture/DescribeTrialResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeTrial)

responseCreatePresignedDomainUrl :: CreatePresignedDomainUrlResponse -> TestTree
responseCreatePresignedDomainUrl = res
    "CreatePresignedDomainUrlResponse"
    "fixture/CreatePresignedDomainUrlResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreatePresignedDomainUrl)

responseDescribeCodeRepository :: DescribeCodeRepositoryResponse -> TestTree
responseDescribeCodeRepository = res
    "DescribeCodeRepositoryResponse"
    "fixture/DescribeCodeRepositoryResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeCodeRepository)

responseDescribeImage :: DescribeImageResponse -> TestTree
responseDescribeImage = res
    "DescribeImageResponse"
    "fixture/DescribeImageResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeImage)

responseDescribeTrainingJob :: DescribeTrainingJobResponse -> TestTree
responseDescribeTrainingJob = res
    "DescribeTrainingJobResponse"
    "fixture/DescribeTrainingJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeTrainingJob)

responseDeleteEndpoint :: DeleteEndpointResponse -> TestTree
responseDeleteEndpoint = res
    "DeleteEndpointResponse"
    "fixture/DeleteEndpointResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteEndpoint)

responseUpdateEndpoint :: UpdateEndpointResponse -> TestTree
responseUpdateEndpoint = res
    "UpdateEndpointResponse"
    "fixture/UpdateEndpointResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateEndpoint)

responseCreateHumanTaskUi :: CreateHumanTaskUiResponse -> TestTree
responseCreateHumanTaskUi = res
    "CreateHumanTaskUiResponse"
    "fixture/CreateHumanTaskUiResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateHumanTaskUi)

responseCreateCompilationJob :: CreateCompilationJobResponse -> TestTree
responseCreateCompilationJob = res
    "CreateCompilationJobResponse"
    "fixture/CreateCompilationJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateCompilationJob)

responseDeleteAppImageConfig :: DeleteAppImageConfigResponse -> TestTree
responseDeleteAppImageConfig = res
    "DeleteAppImageConfigResponse"
    "fixture/DeleteAppImageConfigResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteAppImageConfig)

responseUpdateAppImageConfig :: UpdateAppImageConfigResponse -> TestTree
responseUpdateAppImageConfig = res
    "UpdateAppImageConfigResponse"
    "fixture/UpdateAppImageConfigResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateAppImageConfig)

responseDeleteNotebookInstanceLifecycleConfig :: DeleteNotebookInstanceLifecycleConfigResponse -> TestTree
responseDeleteNotebookInstanceLifecycleConfig = res
    "DeleteNotebookInstanceLifecycleConfigResponse"
    "fixture/DeleteNotebookInstanceLifecycleConfigResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteNotebookInstanceLifecycleConfig)

responseUpdateNotebookInstanceLifecycleConfig :: UpdateNotebookInstanceLifecycleConfigResponse -> TestTree
responseUpdateNotebookInstanceLifecycleConfig = res
    "UpdateNotebookInstanceLifecycleConfigResponse"
    "fixture/UpdateNotebookInstanceLifecycleConfigResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateNotebookInstanceLifecycleConfig)

responseDeleteWorkforce :: DeleteWorkforceResponse -> TestTree
responseDeleteWorkforce = res
    "DeleteWorkforceResponse"
    "fixture/DeleteWorkforceResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteWorkforce)

responseUpdateWorkforce :: UpdateWorkforceResponse -> TestTree
responseUpdateWorkforce = res
    "UpdateWorkforceResponse"
    "fixture/UpdateWorkforceResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateWorkforce)

responseListProcessingJobs :: ListProcessingJobsResponse -> TestTree
responseListProcessingJobs = res
    "ListProcessingJobsResponse"
    "fixture/ListProcessingJobsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListProcessingJobs)

responseCreateLabelingJob :: CreateLabelingJobResponse -> TestTree
responseCreateLabelingJob = res
    "CreateLabelingJobResponse"
    "fixture/CreateLabelingJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateLabelingJob)

responseDescribeNotebookInstance :: DescribeNotebookInstanceResponse -> TestTree
responseDescribeNotebookInstance = res
    "DescribeNotebookInstanceResponse"
    "fixture/DescribeNotebookInstanceResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeNotebookInstance)

responseCreateMonitoringSchedule :: CreateMonitoringScheduleResponse -> TestTree
responseCreateMonitoringSchedule = res
    "CreateMonitoringScheduleResponse"
    "fixture/CreateMonitoringScheduleResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateMonitoringSchedule)

responseListAppImageConfigs :: ListAppImageConfigsResponse -> TestTree
responseListAppImageConfigs = res
    "ListAppImageConfigsResponse"
    "fixture/ListAppImageConfigsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListAppImageConfigs)

responseCreateEndpointConfig :: CreateEndpointConfigResponse -> TestTree
responseCreateEndpointConfig = res
    "CreateEndpointConfigResponse"
    "fixture/CreateEndpointConfigResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateEndpointConfig)

responseStopNotebookInstance :: StopNotebookInstanceResponse -> TestTree
responseStopNotebookInstance = res
    "StopNotebookInstanceResponse"
    "fixture/StopNotebookInstanceResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy StopNotebookInstance)

responseUpdateEndpointWeightsAndCapacities :: UpdateEndpointWeightsAndCapacitiesResponse -> TestTree
responseUpdateEndpointWeightsAndCapacities = res
    "UpdateEndpointWeightsAndCapacitiesResponse"
    "fixture/UpdateEndpointWeightsAndCapacitiesResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateEndpointWeightsAndCapacities)

responseCreateAppImageConfig :: CreateAppImageConfigResponse -> TestTree
responseCreateAppImageConfig = res
    "CreateAppImageConfigResponse"
    "fixture/CreateAppImageConfigResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateAppImageConfig)

responseDeleteTags :: DeleteTagsResponse -> TestTree
responseDeleteTags = res
    "DeleteTagsResponse"
    "fixture/DeleteTagsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteTags)

responseListExperiments :: ListExperimentsResponse -> TestTree
responseListExperiments = res
    "ListExperimentsResponse"
    "fixture/ListExperimentsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListExperiments)

responseListAutoMLJobs :: ListAutoMLJobsResponse -> TestTree
responseListAutoMLJobs = res
    "ListAutoMLJobsResponse"
    "fixture/ListAutoMLJobsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListAutoMLJobs)

responseListApps :: ListAppsResponse -> TestTree
responseListApps = res
    "ListAppsResponse"
    "fixture/ListAppsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListApps)

responseCreateProcessingJob :: CreateProcessingJobResponse -> TestTree
responseCreateProcessingJob = res
    "CreateProcessingJobResponse"
    "fixture/CreateProcessingJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateProcessingJob)

responseDeleteMonitoringSchedule :: DeleteMonitoringScheduleResponse -> TestTree
responseDeleteMonitoringSchedule = res
    "DeleteMonitoringScheduleResponse"
    "fixture/DeleteMonitoringScheduleResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteMonitoringSchedule)

responseDescribeModelPackage :: DescribeModelPackageResponse -> TestTree
responseDescribeModelPackage = res
    "DescribeModelPackageResponse"
    "fixture/DescribeModelPackageResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeModelPackage)

responseDeleteEndpointConfig :: DeleteEndpointConfigResponse -> TestTree
responseDeleteEndpointConfig = res
    "DeleteEndpointConfigResponse"
    "fixture/DeleteEndpointConfigResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteEndpointConfig)

responseUpdateMonitoringSchedule :: UpdateMonitoringScheduleResponse -> TestTree
responseUpdateMonitoringSchedule = res
    "UpdateMonitoringScheduleResponse"
    "fixture/UpdateMonitoringScheduleResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateMonitoringSchedule)

responseDeleteApp :: DeleteAppResponse -> TestTree
responseDeleteApp = res
    "DeleteAppResponse"
    "fixture/DeleteAppResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteApp)

responseCreateAlgorithm :: CreateAlgorithmResponse -> TestTree
responseCreateAlgorithm = res
    "CreateAlgorithmResponse"
    "fixture/CreateAlgorithmResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateAlgorithm)

responseStopTransformJob :: StopTransformJobResponse -> TestTree
responseStopTransformJob = res
    "StopTransformJobResponse"
    "fixture/StopTransformJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy StopTransformJob)

responseCreateModel :: CreateModelResponse -> TestTree
responseCreateModel = res
    "CreateModelResponse"
    "fixture/CreateModelResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateModel)

responseListUserProfiles :: ListUserProfilesResponse -> TestTree
responseListUserProfiles = res
    "ListUserProfilesResponse"
    "fixture/ListUserProfilesResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListUserProfiles)

responseCreateCodeRepository :: CreateCodeRepositoryResponse -> TestTree
responseCreateCodeRepository = res
    "CreateCodeRepositoryResponse"
    "fixture/CreateCodeRepositoryResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateCodeRepository)

responseCreateHyperParameterTuningJob :: CreateHyperParameterTuningJobResponse -> TestTree
responseCreateHyperParameterTuningJob = res
    "CreateHyperParameterTuningJobResponse"
    "fixture/CreateHyperParameterTuningJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateHyperParameterTuningJob)

responseDeleteTrial :: DeleteTrialResponse -> TestTree
responseDeleteTrial = res
    "DeleteTrialResponse"
    "fixture/DeleteTrialResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteTrial)

responseUpdateTrial :: UpdateTrialResponse -> TestTree
responseUpdateTrial = res
    "UpdateTrialResponse"
    "fixture/UpdateTrialResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateTrial)

responseListCodeRepositories :: ListCodeRepositoriesResponse -> TestTree
responseListCodeRepositories = res
    "ListCodeRepositoriesResponse"
    "fixture/ListCodeRepositoriesResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListCodeRepositories)

responseDescribeCompilationJob :: DescribeCompilationJobResponse -> TestTree
responseDescribeCompilationJob = res
    "DescribeCompilationJobResponse"
    "fixture/DescribeCompilationJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeCompilationJob)

responseListHyperParameterTuningJobs :: ListHyperParameterTuningJobsResponse -> TestTree
responseListHyperParameterTuningJobs = res
    "ListHyperParameterTuningJobsResponse"
    "fixture/ListHyperParameterTuningJobsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListHyperParameterTuningJobs)

responseListAlgorithms :: ListAlgorithmsResponse -> TestTree
responseListAlgorithms = res
    "ListAlgorithmsResponse"
    "fixture/ListAlgorithmsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListAlgorithms)

responseRenderUiTemplate :: RenderUiTemplateResponse -> TestTree
responseRenderUiTemplate = res
    "RenderUiTemplateResponse"
    "fixture/RenderUiTemplateResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy RenderUiTemplate)

responseDeleteFlowDefinition :: DeleteFlowDefinitionResponse -> TestTree
responseDeleteFlowDefinition = res
    "DeleteFlowDefinitionResponse"
    "fixture/DeleteFlowDefinitionResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteFlowDefinition)

responseCreateTrial :: CreateTrialResponse -> TestTree
responseCreateTrial = res
    "CreateTrialResponse"
    "fixture/CreateTrialResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateTrial)

responseDeleteModel :: DeleteModelResponse -> TestTree
responseDeleteModel = res
    "DeleteModelResponse"
    "fixture/DeleteModelResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteModel)

responseListModels :: ListModelsResponse -> TestTree
responseListModels = res
    "ListModelsResponse"
    "fixture/ListModelsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListModels)

responseDeleteAlgorithm :: DeleteAlgorithmResponse -> TestTree
responseDeleteAlgorithm = res
    "DeleteAlgorithmResponse"
    "fixture/DeleteAlgorithmResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteAlgorithm)

responseAssociateTrialComponent :: AssociateTrialComponentResponse -> TestTree
responseAssociateTrialComponent = res
    "AssociateTrialComponentResponse"
    "fixture/AssociateTrialComponentResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy AssociateTrialComponent)

responseDescribeNotebookInstanceLifecycleConfig :: DescribeNotebookInstanceLifecycleConfigResponse -> TestTree
responseDescribeNotebookInstanceLifecycleConfig = res
    "DescribeNotebookInstanceLifecycleConfigResponse"
    "fixture/DescribeNotebookInstanceLifecycleConfigResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeNotebookInstanceLifecycleConfig)

responseDescribeWorkforce :: DescribeWorkforceResponse -> TestTree
responseDescribeWorkforce = res
    "DescribeWorkforceResponse"
    "fixture/DescribeWorkforceResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeWorkforce)

responseCreateModelPackage :: CreateModelPackageResponse -> TestTree
responseCreateModelPackage = res
    "CreateModelPackageResponse"
    "fixture/CreateModelPackageResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateModelPackage)

responseStopMonitoringSchedule :: StopMonitoringScheduleResponse -> TestTree
responseStopMonitoringSchedule = res
    "StopMonitoringScheduleResponse"
    "fixture/StopMonitoringScheduleResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy StopMonitoringSchedule)

responseDescribeAppImageConfig :: DescribeAppImageConfigResponse -> TestTree
responseDescribeAppImageConfig = res
    "DescribeAppImageConfigResponse"
    "fixture/DescribeAppImageConfigResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeAppImageConfig)

responseListNotebookInstances :: ListNotebookInstancesResponse -> TestTree
responseListNotebookInstances = res
    "ListNotebookInstancesResponse"
    "fixture/ListNotebookInstancesResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListNotebookInstances)

responseStopLabelingJob :: StopLabelingJobResponse -> TestTree
responseStopLabelingJob = res
    "StopLabelingJobResponse"
    "fixture/StopLabelingJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy StopLabelingJob)

responseDeleteNotebookInstance :: DeleteNotebookInstanceResponse -> TestTree
responseDeleteNotebookInstance = res
    "DeleteNotebookInstanceResponse"
    "fixture/DeleteNotebookInstanceResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteNotebookInstance)

responseUpdateNotebookInstance :: UpdateNotebookInstanceResponse -> TestTree
responseUpdateNotebookInstance = res
    "UpdateNotebookInstanceResponse"
    "fixture/UpdateNotebookInstanceResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateNotebookInstance)

responseListModelPackages :: ListModelPackagesResponse -> TestTree
responseListModelPackages = res
    "ListModelPackagesResponse"
    "fixture/ListModelPackagesResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListModelPackages)

responseDeleteImageVersion :: DeleteImageVersionResponse -> TestTree
responseDeleteImageVersion = res
    "DeleteImageVersionResponse"
    "fixture/DeleteImageVersionResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteImageVersion)

responseDescribeExperiment :: DescribeExperimentResponse -> TestTree
responseDescribeExperiment = res
    "DescribeExperimentResponse"
    "fixture/DescribeExperimentResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeExperiment)

responseDeleteTrialComponent :: DeleteTrialComponentResponse -> TestTree
responseDeleteTrialComponent = res
    "DeleteTrialComponentResponse"
    "fixture/DeleteTrialComponentResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteTrialComponent)

responseUpdateTrialComponent :: UpdateTrialComponentResponse -> TestTree
responseUpdateTrialComponent = res
    "UpdateTrialComponentResponse"
    "fixture/UpdateTrialComponentResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateTrialComponent)

responseDescribeLabelingJob :: DescribeLabelingJobResponse -> TestTree
responseDescribeLabelingJob = res
    "DescribeLabelingJobResponse"
    "fixture/DescribeLabelingJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeLabelingJob)

responseCreateDomain :: CreateDomainResponse -> TestTree
responseCreateDomain = res
    "CreateDomainResponse"
    "fixture/CreateDomainResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateDomain)

responseDescribeUserProfile :: DescribeUserProfileResponse -> TestTree
responseDescribeUserProfile = res
    "DescribeUserProfileResponse"
    "fixture/DescribeUserProfileResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeUserProfile)

responseListMonitoringExecutions :: ListMonitoringExecutionsResponse -> TestTree
responseListMonitoringExecutions = res
    "ListMonitoringExecutionsResponse"
    "fixture/ListMonitoringExecutionsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListMonitoringExecutions)

responseDeleteHumanTaskUi :: DeleteHumanTaskUiResponse -> TestTree
responseDeleteHumanTaskUi = res
    "DeleteHumanTaskUiResponse"
    "fixture/DeleteHumanTaskUiResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteHumanTaskUi)

responseStopTrainingJob :: StopTrainingJobResponse -> TestTree
responseStopTrainingJob = res
    "StopTrainingJobResponse"
    "fixture/StopTrainingJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy StopTrainingJob)

responseDescribeAlgorithm :: DescribeAlgorithmResponse -> TestTree
responseDescribeAlgorithm = res
    "DescribeAlgorithmResponse"
    "fixture/DescribeAlgorithmResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeAlgorithm)

responseDescribeModel :: DescribeModelResponse -> TestTree
responseDescribeModel = res
    "DescribeModelResponse"
    "fixture/DescribeModelResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeModel)

responseListTransformJobs :: ListTransformJobsResponse -> TestTree
responseListTransformJobs = res
    "ListTransformJobsResponse"
    "fixture/ListTransformJobsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListTransformJobs)

responseDescribeHyperParameterTuningJob :: DescribeHyperParameterTuningJobResponse -> TestTree
responseDescribeHyperParameterTuningJob = res
    "DescribeHyperParameterTuningJobResponse"
    "fixture/DescribeHyperParameterTuningJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeHyperParameterTuningJob)

responseListEndpoints :: ListEndpointsResponse -> TestTree
responseListEndpoints = res
    "ListEndpointsResponse"
    "fixture/ListEndpointsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListEndpoints)

responseDescribeFlowDefinition :: DescribeFlowDefinitionResponse -> TestTree
responseDescribeFlowDefinition = res
    "DescribeFlowDefinitionResponse"
    "fixture/DescribeFlowDefinitionResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeFlowDefinition)

responseCreatePresignedNotebookInstanceUrl :: CreatePresignedNotebookInstanceUrlResponse -> TestTree
responseCreatePresignedNotebookInstanceUrl = res
    "CreatePresignedNotebookInstanceUrlResponse"
    "fixture/CreatePresignedNotebookInstanceUrlResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreatePresignedNotebookInstanceUrl)

responseListTrainingJobsForHyperParameterTuningJob :: ListTrainingJobsForHyperParameterTuningJobResponse -> TestTree
responseListTrainingJobsForHyperParameterTuningJob = res
    "ListTrainingJobsForHyperParameterTuningJobResponse"
    "fixture/ListTrainingJobsForHyperParameterTuningJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListTrainingJobsForHyperParameterTuningJob)

responseDescribeDomain :: DescribeDomainResponse -> TestTree
responseDescribeDomain = res
    "DescribeDomainResponse"
    "fixture/DescribeDomainResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeDomain)

responseUpdateWorkteam :: UpdateWorkteamResponse -> TestTree
responseUpdateWorkteam = res
    "UpdateWorkteamResponse"
    "fixture/UpdateWorkteamResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateWorkteam)

responseDeleteWorkteam :: DeleteWorkteamResponse -> TestTree
responseDeleteWorkteam = res
    "DeleteWorkteamResponse"
    "fixture/DeleteWorkteamResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteWorkteam)

responseListWorkteams :: ListWorkteamsResponse -> TestTree
responseListWorkteams = res
    "ListWorkteamsResponse"
    "fixture/ListWorkteamsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListWorkteams)

responseCreateAutoMLJob :: CreateAutoMLJobResponse -> TestTree
responseCreateAutoMLJob = res
    "CreateAutoMLJobResponse"
    "fixture/CreateAutoMLJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateAutoMLJob)

responseCreateApp :: CreateAppResponse -> TestTree
responseCreateApp = res
    "CreateAppResponse"
    "fixture/CreateAppResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateApp)

responseCreateExperiment :: CreateExperimentResponse -> TestTree
responseCreateExperiment = res
    "CreateExperimentResponse"
    "fixture/CreateExperimentResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateExperiment)

responseListNotebookInstanceLifecycleConfigs :: ListNotebookInstanceLifecycleConfigsResponse -> TestTree
responseListNotebookInstanceLifecycleConfigs = res
    "ListNotebookInstanceLifecycleConfigsResponse"
    "fixture/ListNotebookInstanceLifecycleConfigsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListNotebookInstanceLifecycleConfigs)

responseListWorkforces :: ListWorkforcesResponse -> TestTree
responseListWorkforces = res
    "ListWorkforcesResponse"
    "fixture/ListWorkforcesResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListWorkforces)

responseDescribeSubscribedWorkteam :: DescribeSubscribedWorkteamResponse -> TestTree
responseDescribeSubscribedWorkteam = res
    "DescribeSubscribedWorkteamResponse"
    "fixture/DescribeSubscribedWorkteamResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeSubscribedWorkteam)

responseCreateWorkteam :: CreateWorkteamResponse -> TestTree
responseCreateWorkteam = res
    "CreateWorkteamResponse"
    "fixture/CreateWorkteamResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateWorkteam)

responseCreateNotebookInstanceLifecycleConfig :: CreateNotebookInstanceLifecycleConfigResponse -> TestTree
responseCreateNotebookInstanceLifecycleConfig = res
    "CreateNotebookInstanceLifecycleConfigResponse"
    "fixture/CreateNotebookInstanceLifecycleConfigResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateNotebookInstanceLifecycleConfig)

responseListMonitoringSchedules :: ListMonitoringSchedulesResponse -> TestTree
responseListMonitoringSchedules = res
    "ListMonitoringSchedulesResponse"
    "fixture/ListMonitoringSchedulesResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListMonitoringSchedules)

responseListLabelingJobs :: ListLabelingJobsResponse -> TestTree
responseListLabelingJobs = res
    "ListLabelingJobsResponse"
    "fixture/ListLabelingJobsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListLabelingJobs)

responseStartNotebookInstance :: StartNotebookInstanceResponse -> TestTree
responseStartNotebookInstance = res
    "StartNotebookInstanceResponse"
    "fixture/StartNotebookInstanceResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy StartNotebookInstance)

responseUpdateExperiment :: UpdateExperimentResponse -> TestTree
responseUpdateExperiment = res
    "UpdateExperimentResponse"
    "fixture/UpdateExperimentResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateExperiment)

responseDeleteExperiment :: DeleteExperimentResponse -> TestTree
responseDeleteExperiment = res
    "DeleteExperimentResponse"
    "fixture/DeleteExperimentResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteExperiment)

responseAddTags :: AddTagsResponse -> TestTree
responseAddTags = res
    "AddTagsResponse"
    "fixture/AddTagsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy AddTags)

responseCreateWorkforce :: CreateWorkforceResponse -> TestTree
responseCreateWorkforce = res
    "CreateWorkforceResponse"
    "fixture/CreateWorkforceResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateWorkforce)

responseDescribeTrialComponent :: DescribeTrialComponentResponse -> TestTree
responseDescribeTrialComponent = res
    "DescribeTrialComponentResponse"
    "fixture/DescribeTrialComponentResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeTrialComponent)

responseDescribeImageVersion :: DescribeImageVersionResponse -> TestTree
responseDescribeImageVersion = res
    "DescribeImageVersionResponse"
    "fixture/DescribeImageVersionResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeImageVersion)

responseListEndpointConfigs :: ListEndpointConfigsResponse -> TestTree
responseListEndpointConfigs = res
    "ListEndpointConfigsResponse"
    "fixture/ListEndpointConfigsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListEndpointConfigs)

responseCreateFlowDefinition :: CreateFlowDefinitionResponse -> TestTree
responseCreateFlowDefinition = res
    "CreateFlowDefinitionResponse"
    "fixture/CreateFlowDefinitionResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateFlowDefinition)

responseListTags :: ListTagsResponse -> TestTree
responseListTags = res
    "ListTagsResponse"
    "fixture/ListTagsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListTags)

responseDescribeHumanTaskUi :: DescribeHumanTaskUiResponse -> TestTree
responseDescribeHumanTaskUi = res
    "DescribeHumanTaskUiResponse"
    "fixture/DescribeHumanTaskUiResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeHumanTaskUi)

responseCreateTrainingJob :: CreateTrainingJobResponse -> TestTree
responseCreateTrainingJob = res
    "CreateTrainingJobResponse"
    "fixture/CreateTrainingJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateTrainingJob)

responseDeleteUserProfile :: DeleteUserProfileResponse -> TestTree
responseDeleteUserProfile = res
    "DeleteUserProfileResponse"
    "fixture/DeleteUserProfileResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteUserProfile)

responseUpdateUserProfile :: UpdateUserProfileResponse -> TestTree
responseUpdateUserProfile = res
    "UpdateUserProfileResponse"
    "fixture/UpdateUserProfileResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateUserProfile)

responseCreateImage :: CreateImageResponse -> TestTree
responseCreateImage = res
    "CreateImageResponse"
    "fixture/CreateImageResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateImage)

responseListTrials :: ListTrialsResponse -> TestTree
responseListTrials = res
    "ListTrialsResponse"
    "fixture/ListTrialsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListTrials)

responseStopCompilationJob :: StopCompilationJobResponse -> TestTree
responseStopCompilationJob = res
    "StopCompilationJobResponse"
    "fixture/StopCompilationJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy StopCompilationJob)

responseListImages :: ListImagesResponse -> TestTree
responseListImages = res
    "ListImagesResponse"
    "fixture/ListImagesResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListImages)

responseCreateUserProfile :: CreateUserProfileResponse -> TestTree
responseCreateUserProfile = res
    "CreateUserProfileResponse"
    "fixture/CreateUserProfileResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateUserProfile)

responseSearch :: SearchResponse -> TestTree
responseSearch = res
    "SearchResponse"
    "fixture/SearchResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy Search)

responseUpdateCodeRepository :: UpdateCodeRepositoryResponse -> TestTree
responseUpdateCodeRepository = res
    "UpdateCodeRepositoryResponse"
    "fixture/UpdateCodeRepositoryResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateCodeRepository)

responseDeleteCodeRepository :: DeleteCodeRepositoryResponse -> TestTree
responseDeleteCodeRepository = res
    "DeleteCodeRepositoryResponse"
    "fixture/DeleteCodeRepositoryResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteCodeRepository)

responseDescribeTransformJob :: DescribeTransformJobResponse -> TestTree
responseDescribeTransformJob = res
    "DescribeTransformJobResponse"
    "fixture/DescribeTransformJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeTransformJob)

responseListCandidatesForAutoMLJob :: ListCandidatesForAutoMLJobResponse -> TestTree
responseListCandidatesForAutoMLJob = res
    "ListCandidatesForAutoMLJobResponse"
    "fixture/ListCandidatesForAutoMLJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListCandidatesForAutoMLJob)

responseDeleteImage :: DeleteImageResponse -> TestTree
responseDeleteImage = res
    "DeleteImageResponse"
    "fixture/DeleteImageResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteImage)

responseUpdateImage :: UpdateImageResponse -> TestTree
responseUpdateImage = res
    "UpdateImageResponse"
    "fixture/UpdateImageResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateImage)

responseListFlowDefinitions :: ListFlowDefinitionsResponse -> TestTree
responseListFlowDefinitions = res
    "ListFlowDefinitionsResponse"
    "fixture/ListFlowDefinitionsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListFlowDefinitions)

responseDescribeEndpoint :: DescribeEndpointResponse -> TestTree
responseDescribeEndpoint = res
    "DescribeEndpointResponse"
    "fixture/DescribeEndpointResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeEndpoint)

responseListTrainingJobs :: ListTrainingJobsResponse -> TestTree
responseListTrainingJobs = res
    "ListTrainingJobsResponse"
    "fixture/ListTrainingJobsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListTrainingJobs)

responseDescribeWorkteam :: DescribeWorkteamResponse -> TestTree
responseDescribeWorkteam = res
    "DescribeWorkteamResponse"
    "fixture/DescribeWorkteamResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeWorkteam)

responseListSubscribedWorkteams :: ListSubscribedWorkteamsResponse -> TestTree
responseListSubscribedWorkteams = res
    "ListSubscribedWorkteamsResponse"
    "fixture/ListSubscribedWorkteamsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListSubscribedWorkteams)

responseDeleteDomain :: DeleteDomainResponse -> TestTree
responseDeleteDomain = res
    "DeleteDomainResponse"
    "fixture/DeleteDomainResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DeleteDomain)

responseUpdateDomain :: UpdateDomainResponse -> TestTree
responseUpdateDomain = res
    "UpdateDomainResponse"
    "fixture/UpdateDomainResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy UpdateDomain)

responseListDomains :: ListDomainsResponse -> TestTree
responseListDomains = res
    "ListDomainsResponse"
    "fixture/ListDomainsResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy ListDomains)

responseCreateImageVersion :: CreateImageVersionResponse -> TestTree
responseCreateImageVersion = res
    "CreateImageVersionResponse"
    "fixture/CreateImageVersionResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateImageVersion)

responseStartMonitoringSchedule :: StartMonitoringScheduleResponse -> TestTree
responseStartMonitoringSchedule = res
    "StartMonitoringScheduleResponse"
    "fixture/StartMonitoringScheduleResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy StartMonitoringSchedule)

responseStopAutoMLJob :: StopAutoMLJobResponse -> TestTree
responseStopAutoMLJob = res
    "StopAutoMLJobResponse"
    "fixture/StopAutoMLJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy StopAutoMLJob)

responseCreateTrialComponent :: CreateTrialComponentResponse -> TestTree
responseCreateTrialComponent = res
    "CreateTrialComponentResponse"
    "fixture/CreateTrialComponentResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy CreateTrialComponent)

responseDescribeProcessingJob :: DescribeProcessingJobResponse -> TestTree
responseDescribeProcessingJob = res
    "DescribeProcessingJobResponse"
    "fixture/DescribeProcessingJobResponse.proto"
    mkServiceConfig
    (Proxy :: Proxy DescribeProcessingJob)
