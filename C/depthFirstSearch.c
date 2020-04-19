#include <stdio.h>
#include <stdlib.h>
struct node{
    int vertex;
    struct node* next;
};

struct node* createNode(int v);

struct Graph{
    int numVertices;
    int* visited;
    struct node** adjLists;
};

struct Graph* createGraph(int);
void addEdge(struct Graph*, int, int);
void printGraph(struct Graph*);
void DFS(struct Graph*, int);

int main(){
    int v, e, s, d;
    printf("Enter number of vertices and edges: ");
    scanf("%d %d", &v, &e);
    struct Graph* graph = createGraph(4);
    for(int i=1; i<=e; i++){
        s = d = 0;
        printf("Enter Source and Destination of Edge %d: ", i);
        scanf("%d %d", &s, &d);
    addEdge(graph, s, d);
    }
    printGraph(graph);
    DFS(graph, 2);
    return 0;
}

void DFS(struct Graph* graph, int vertex) {
    struct node* adjList = graph->adjLists[vertex];
    struct node* temp = adjList;
    graph->visited[vertex] = 1;
    printf("Visited %d \n", vertex);
    while(temp!=NULL) {
        int connectedVertex = temp->vertex;
        if(graph->visited[connectedVertex] == 0) {
            DFS(graph, connectedVertex);
        }
        temp = temp->next;
    }
}
 
struct node* createNode(int v){
    struct node* newNode = malloc(sizeof(struct node));
    newNode->vertex = v;
    newNode->next = NULL;
    return newNode;
}

struct Graph* createGraph(int vertices){
    struct Graph* graph = malloc(sizeof(struct Graph));
    graph->numVertices = vertices;
    graph->adjLists = malloc(vertices * sizeof(struct node*));
    graph->visited = malloc(vertices * sizeof(int));
    int i;
    for (i = 0; i < vertices; i++) {
        graph->adjLists[i] = NULL;
        graph->visited[i] = 0;
    }
    return graph;
}
 
void addEdge(struct Graph* graph, int src, int dest)
{
    struct node* newNode = createNode(dest);
    newNode->next = graph->adjLists[src];
    graph->adjLists[src] = newNode;
    newNode = createNode(src);
    newNode->next = graph->adjLists[dest];
    graph->adjLists[dest] = newNode;
}
 
void printGraph(struct Graph* graph){
    int v;
    for (v = 0; v < graph->numVertices; v++){
        struct node* temp = graph->adjLists[v];
        printf("\n Adjacency list of vertex %d\n ", v);
        while (temp){
            printf("%d -> ", temp->vertex);
            temp = temp->next;
        }
        printf("\n");
    }
}
