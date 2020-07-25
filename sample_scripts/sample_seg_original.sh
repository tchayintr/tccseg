# Common parameters

CCLIB=original


############################################
# Segment mode

MODE=segment
INPUT_DATA='เธอคือพจนานุกรม'

python3 tccseg/segmenter.py \
    --execute_mode $MODE \
    --input_data $INPUT_DATA \
    --cclib $CCLIB \


############################################
# Interactive mode

MODE=interactive

# python3 tccseg/segmenter.py \
#     --execute_mode $MODE \
#     --cclib $CCLIB \
